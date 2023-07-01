// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_initialization_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionInitializeResponseModel _$TransactionInitializeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionInitializeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionInitializeResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  TransactionInitializeResponseDataModel? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionInitializeResponseModelCopyWith<
          TransactionInitializeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInitializeResponseModelCopyWith<$Res> {
  factory $TransactionInitializeResponseModelCopyWith(
          TransactionInitializeResponseModel value,
          $Res Function(TransactionInitializeResponseModel) then) =
      _$TransactionInitializeResponseModelCopyWithImpl<$Res,
          TransactionInitializeResponseModel>;
  @useResult
  $Res call(
      {String? status,
      String? message,
      TransactionInitializeResponseDataModel? data});

  $TransactionInitializeResponseDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransactionInitializeResponseModelCopyWithImpl<$Res,
        $Val extends TransactionInitializeResponseModel>
    implements $TransactionInitializeResponseModelCopyWith<$Res> {
  _$TransactionInitializeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionInitializeResponseDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionInitializeResponseDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionInitializeResponseDataModelCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionInitializeResponseModelCopyWith<$Res>
    implements $TransactionInitializeResponseModelCopyWith<$Res> {
  factory _$$_TransactionInitializeResponseModelCopyWith(
          _$_TransactionInitializeResponseModel value,
          $Res Function(_$_TransactionInitializeResponseModel) then) =
      __$$_TransactionInitializeResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? message,
      TransactionInitializeResponseDataModel? data});

  @override
  $TransactionInitializeResponseDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_TransactionInitializeResponseModelCopyWithImpl<$Res>
    extends _$TransactionInitializeResponseModelCopyWithImpl<$Res,
        _$_TransactionInitializeResponseModel>
    implements _$$_TransactionInitializeResponseModelCopyWith<$Res> {
  __$$_TransactionInitializeResponseModelCopyWithImpl(
      _$_TransactionInitializeResponseModel _value,
      $Res Function(_$_TransactionInitializeResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TransactionInitializeResponseModel(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionInitializeResponseDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_TransactionInitializeResponseModel
    extends _TransactionInitializeResponseModel {
  const _$_TransactionInitializeResponseModel(
      {this.status, this.message, this.data})
      : super._();

  factory _$_TransactionInitializeResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TransactionInitializeResponseModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final TransactionInitializeResponseDataModel? data;

  @override
  String toString() {
    return 'TransactionInitializeResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionInitializeResponseModel &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionInitializeResponseModelCopyWith<
          _$_TransactionInitializeResponseModel>
      get copyWith => __$$_TransactionInitializeResponseModelCopyWithImpl<
          _$_TransactionInitializeResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionInitializeResponseModelToJson(
      this,
    );
  }
}

abstract class _TransactionInitializeResponseModel
    extends TransactionInitializeResponseModel {
  const factory _TransactionInitializeResponseModel(
          {final String? status,
          final String? message,
          final TransactionInitializeResponseDataModel? data}) =
      _$_TransactionInitializeResponseModel;
  const _TransactionInitializeResponseModel._() : super._();

  factory _TransactionInitializeResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionInitializeResponseModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  TransactionInitializeResponseDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionInitializeResponseModelCopyWith<
          _$_TransactionInitializeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionInitializeResponseDataModel
    _$TransactionInitializeResponseDataModelFromJson(
        Map<String, dynamic> json) {
  return _TransactionInitializeResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionInitializeResponseDataModel {
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_code')
  String? get accessCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorization_url')
  String? get authorizationUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionInitializeResponseDataModelCopyWith<
          TransactionInitializeResponseDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionInitializeResponseDataModelCopyWith<$Res> {
  factory $TransactionInitializeResponseDataModelCopyWith(
          TransactionInitializeResponseDataModel value,
          $Res Function(TransactionInitializeResponseDataModel) then) =
      _$TransactionInitializeResponseDataModelCopyWithImpl<$Res,
          TransactionInitializeResponseDataModel>;
  @useResult
  $Res call(
      {String? reference,
      @JsonKey(name: 'access_code') String? accessCode,
      @JsonKey(name: 'authorization_url') String? authorizationUrl});
}

/// @nodoc
class _$TransactionInitializeResponseDataModelCopyWithImpl<$Res,
        $Val extends TransactionInitializeResponseDataModel>
    implements $TransactionInitializeResponseDataModelCopyWith<$Res> {
  _$TransactionInitializeResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? accessCode = freezed,
    Object? authorizationUrl = freezed,
  }) {
    return _then(_value.copyWith(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      accessCode: freezed == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationUrl: freezed == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionInitializeResponseDataModelCopyWith<$Res>
    implements $TransactionInitializeResponseDataModelCopyWith<$Res> {
  factory _$$_TransactionInitializeResponseDataModelCopyWith(
          _$_TransactionInitializeResponseDataModel value,
          $Res Function(_$_TransactionInitializeResponseDataModel) then) =
      __$$_TransactionInitializeResponseDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? reference,
      @JsonKey(name: 'access_code') String? accessCode,
      @JsonKey(name: 'authorization_url') String? authorizationUrl});
}

/// @nodoc
class __$$_TransactionInitializeResponseDataModelCopyWithImpl<$Res>
    extends _$TransactionInitializeResponseDataModelCopyWithImpl<$Res,
        _$_TransactionInitializeResponseDataModel>
    implements _$$_TransactionInitializeResponseDataModelCopyWith<$Res> {
  __$$_TransactionInitializeResponseDataModelCopyWithImpl(
      _$_TransactionInitializeResponseDataModel _value,
      $Res Function(_$_TransactionInitializeResponseDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? accessCode = freezed,
    Object? authorizationUrl = freezed,
  }) {
    return _then(_$_TransactionInitializeResponseDataModel(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      accessCode: freezed == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String?,
      authorizationUrl: freezed == authorizationUrl
          ? _value.authorizationUrl
          : authorizationUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_TransactionInitializeResponseDataModel
    extends _TransactionInitializeResponseDataModel {
  const _$_TransactionInitializeResponseDataModel(
      {this.reference,
      @JsonKey(name: 'access_code') this.accessCode,
      @JsonKey(name: 'authorization_url') this.authorizationUrl})
      : super._();

  factory _$_TransactionInitializeResponseDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_TransactionInitializeResponseDataModelFromJson(json);

  @override
  final String? reference;
  @override
  @JsonKey(name: 'access_code')
  final String? accessCode;
  @override
  @JsonKey(name: 'authorization_url')
  final String? authorizationUrl;

  @override
  String toString() {
    return 'TransactionInitializeResponseDataModel(reference: $reference, accessCode: $accessCode, authorizationUrl: $authorizationUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionInitializeResponseDataModel &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.authorizationUrl, authorizationUrl) ||
                other.authorizationUrl == authorizationUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reference, accessCode, authorizationUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionInitializeResponseDataModelCopyWith<
          _$_TransactionInitializeResponseDataModel>
      get copyWith => __$$_TransactionInitializeResponseDataModelCopyWithImpl<
          _$_TransactionInitializeResponseDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionInitializeResponseDataModelToJson(
      this,
    );
  }
}

abstract class _TransactionInitializeResponseDataModel
    extends TransactionInitializeResponseDataModel {
  const factory _TransactionInitializeResponseDataModel(
          {final String? reference,
          @JsonKey(name: 'access_code') final String? accessCode,
          @JsonKey(name: 'authorization_url') final String? authorizationUrl}) =
      _$_TransactionInitializeResponseDataModel;
  const _TransactionInitializeResponseDataModel._() : super._();

  factory _TransactionInitializeResponseDataModel.fromJson(
          Map<String, dynamic> json) =
      _$_TransactionInitializeResponseDataModel.fromJson;

  @override
  String? get reference;
  @override
  @JsonKey(name: 'access_code')
  String? get accessCode;
  @override
  @JsonKey(name: 'authorization_url')
  String? get authorizationUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionInitializeResponseDataModelCopyWith<
          _$_TransactionInitializeResponseDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
