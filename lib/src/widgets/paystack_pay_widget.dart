import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:paystack_pay/src/models/transaction_initialization_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaystackPayWidget extends HookWidget {
  const PaystackPayWidget({
    required this.secretKey,
    required this.reference,
    required this.email,
    required this.amount,
    this.currency = "NGN",
    this.paymentChannel = const ['bank', 'card'],
    this.metadata,
    this.transactionCompleted,
    this.transactionNotCompleted,
    super.key,
  });

  /// Secret Key is provided by Paystack when an account is created with PayStack.
  final String secretKey;

  /// Reference could be alpha numeric and or numeric sequencial character,
  /// could be a way to check trasancation from the backend.
  final String reference;

  /// Currency as at the time of publishing was either GHS or NGN
  /// PayStack is currently expanding in Africa so try using other currencies.
  final String currency;

  /// Email of the customer trying to make payment.
  final String email;

  /// Amount eg. 2000 means 20.00, 30000 means 300.00
  /// the extra 2 zeroes are the two decimal places.
  final String amount;

  /// MetaData helps with DevOps for sending custom
  /// fields to be consumed at the backend of frontend.
  final Object? metadata;

  /// Payment Channels are the types of payment methods
  /// you want to present to the user based on what Paystack
  /// provides with your secretkey.
  final Object? paymentChannel;

  /// If transacted was completed successfully.
  final VoidCallback? transactionCompleted;

  /// If transacted was not completed at all.
  final VoidCallback? transactionNotCompleted;

  @override
  Widget build(BuildContext context) {
    late WebViewController controller;

    final isLoading = useState<bool>(false);

    final generatePaystackUrl = useCallback(() async {
      var response;
      try {
        response = await http.post(
          Uri.parse('https://api.paystack.co/transaction/initialize'),
          body: json.encode({
            "email": email,
            "amount": amount * 100,
            "reference": reference,
            "currency": currency,
            "metadata": metadata,
            "channels": paymentChannel
          }),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $secretKey",
          },
        );
      } catch (e) {
        /// In the event of an exception, take the user back and show a SnackBar error.
        Navigator.pop(context);
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        var snackBar = const SnackBar(
            content: Text("Fatal error occurred, Please check your internet"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

      if (response.statusCode == 200) {
        return TransactionInitializeResponseModel.fromJson(
            json.decode(response.body));
      }

      return TransactionInitializeResponseModel(
        status: response.statusCode.toString(),
        message: response.body,
        data: null,
      );
    }, []);

    final verifyTransaction = useCallback((String ref) async {
      var response;
      try {
        response = await http.get(
          Uri.parse('https://api.paystack.co/transaction/verify/$ref'),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $secretKey",
          },
        );
      } catch (e) {
        /// In the event of an exception, take the user back and show a SnackBar error.
        Navigator.pop(context);
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        var snackBar = const SnackBar(
            content: Text("Fatal error occurred, Please check your internet"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }

      if (response.statusCode == 200) {
        var decodedRespBody = jsonDecode(response.body);
        if (decodedRespBody["data"]["gateway_response"] == "Approved" ||
            decodedRespBody["data"]["gateway_response"] == "Successful") {
          if (transactionCompleted != null) {
            transactionCompleted!();
          }
        } else {
          if (transactionNotCompleted != null) {
            transactionNotCompleted!();
          }
        }

        return TransactionInitializeResponseModel.fromJson(
            json.decode(response.body));
      }

      return TransactionInitializeResponseModel(
        status: response.statusCode.toString(),
        message: response.body,
        data: null,
      );
    }, []);

    final initPayment = useCallback(() async {
      final paymentResults = await generatePaystackUrl();

      controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setBackgroundColor(const Color(0x00000000))
        ..setUserAgent('Flutter;Webview')
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              isLoading.value = true;
              if (kDebugMode) {
                print('WebView is loading (progress : $progress%)');
              }
            },
            onPageStarted: (String url) {
              if (kDebugMode) {
                print('WebView Current Url on Started : $url');
              }
            },
            onPageFinished: (String url) {
              if (kDebugMode) {
                print('WebView on Page Finished : $url');
              }

              isLoading.value = false;
            },
            // onWebResourceError: (WebResourceError error) {},
            onNavigationRequest: (NavigationRequest request) async {
              if (kDebugMode) {
                print('WebView Navigation Request : ${request.url}');
              }

              if (request.url == "https://hello.pstk.xyz/callback") {
                verifyTransaction(reference)
                    //.then((value) => Navigator.of(context).pop())
                    ;
                Navigator.of(context).pop(); //close webview
              }

              if (request.url == 'https://standard.paystack.co/close') {
                Navigator.of(context).pop(); //close webview
              }

              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse(paymentResults.data!.authorizationUrl!));
    }, [
      reference,
      amount,
      email,
      secretKey,
      paymentChannel,
    ]);

    useEffect(() {
      initPayment();

      return null;
    }, []);

    return Scaffold(
      body: Builder(builder: (context) {
        return WebViewWidget(controller: controller);
      }),
    );
  }
}
