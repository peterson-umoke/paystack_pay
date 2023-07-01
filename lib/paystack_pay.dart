library paystack_pay;

import 'package:flutter/material.dart';
import 'package:paystack_pay/src/widgets/paystack_pay_widget.dart';

/// A Calculator.
class PaystackPay {
  Future<dynamic> now({
    /// Context provided from current view
    required BuildContext context,

    /// Secret key is provided from your paystack account
    required String secretKey,

    /// Email of the customer
    required String customerEmail,

    /// Alpha numeric and/or number ID to a transaction
    required String reference,

    /// Currency of the transaction
    String? currency,

    /// Amount you want to charge the user. Add extra two zeros after typing the amount
    required String amount,

    /// What happens next after transaction is completed
    VoidCallback? transactionCompleted,

    /// What happens next after transaction is not completed
    VoidCallback? transactionNotCompleted,

    /// Extra data not consumed by Paystack but for developer purposes
    Object? metaData,

    /// Payment Channels you want to make available to the user
    Object? paymentChannel,
  }) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaystackPayWidget(
          secretKey: secretKey,
          email: customerEmail,
          reference: reference,
          currency: currency,
          amount: amount,
          paymentChannel: paymentChannel,
          metadata: metaData,
          transactionCompleted: transactionCompleted,
          transactionNotCompleted: transactionNotCompleted,
        ),
      ),
    );
  }
}
