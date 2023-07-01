// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_initialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionInitializeResponseModel
    _$$_TransactionInitializeResponseModelFromJson(Map<String, dynamic> json) =>
        _$_TransactionInitializeResponseModel(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : TransactionInitializeResponseDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_TransactionInitializeResponseModelToJson(
    _$_TransactionInitializeResponseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

_$_TransactionInitializeResponseDataModel
    _$$_TransactionInitializeResponseDataModelFromJson(
            Map<String, dynamic> json) =>
        _$_TransactionInitializeResponseDataModel(
          reference: json['reference'] as String?,
          accessCode: json['access_code'] as String?,
          authorizationUrl: json['authorization_url'] as String?,
        );

Map<String, dynamic> _$$_TransactionInitializeResponseDataModelToJson(
    _$_TransactionInitializeResponseDataModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reference', instance.reference);
  writeNotNull('access_code', instance.accessCode);
  writeNotNull('authorization_url', instance.authorizationUrl);
  return val;
}
