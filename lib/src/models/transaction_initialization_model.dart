import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_initialization_model.freezed.dart';
part 'transaction_initialization_model.g.dart';

@freezed
class TransactionInitializeResponseModel
    with _$TransactionInitializeResponseModel {
  const TransactionInitializeResponseModel._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory TransactionInitializeResponseModel({
    final String? status,
    final String? message,
    final TransactionInitializeResponseDataModel? data,
  }) = _TransactionInitializeResponseModel;

  factory TransactionInitializeResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionInitializeResponseModelFromJson(json);
}

@freezed
class TransactionInitializeResponseDataModel
    with _$TransactionInitializeResponseDataModel {
  const TransactionInitializeResponseDataModel._();

  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory TransactionInitializeResponseDataModel({
    String? reference,
    @JsonKey(name: 'access_code') String? accessCode,
    @JsonKey(name: 'authorization_url') String? authorizationUrl,
  }) = _TransactionInitializeResponseDataModel;

  factory TransactionInitializeResponseDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionInitializeResponseDataModelFromJson(json);
}
