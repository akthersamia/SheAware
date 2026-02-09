// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_log_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomLogResponse _$SymptomLogResponseFromJson(Map<String, dynamic> json) {
  return _SymptomLogResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomLogResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SymptomLogDataResponse get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SymptomLogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomLogResponseCopyWith<SymptomLogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomLogResponseCopyWith<$Res> {
  factory $SymptomLogResponseCopyWith(
    SymptomLogResponse value,
    $Res Function(SymptomLogResponse) then,
  ) = _$SymptomLogResponseCopyWithImpl<$Res, SymptomLogResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') SymptomLogDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  $SymptomLogDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class _$SymptomLogResponseCopyWithImpl<$Res, $Val extends SymptomLogResponse>
    implements $SymptomLogResponseCopyWith<$Res> {
  _$SymptomLogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as SymptomLogDataResponse,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SymptomLogDataResponseCopyWith<$Res> get data {
    return $SymptomLogDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymptomLogResponseImplCopyWith<$Res>
    implements $SymptomLogResponseCopyWith<$Res> {
  factory _$$SymptomLogResponseImplCopyWith(
    _$SymptomLogResponseImpl value,
    $Res Function(_$SymptomLogResponseImpl) then,
  ) = __$$SymptomLogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') SymptomLogDataResponse data,
    @JsonKey(name: 'timestamp') String timestamp,
  });

  @override
  $SymptomLogDataResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$SymptomLogResponseImplCopyWithImpl<$Res>
    extends _$SymptomLogResponseCopyWithImpl<$Res, _$SymptomLogResponseImpl>
    implements _$$SymptomLogResponseImplCopyWith<$Res> {
  __$$SymptomLogResponseImplCopyWithImpl(
    _$SymptomLogResponseImpl _value,
    $Res Function(_$SymptomLogResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$SymptomLogResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as SymptomLogDataResponse,
        timestamp: null == timestamp
            ? _value.timestamp
            : timestamp // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomLogResponseImpl implements _SymptomLogResponse {
  const _$SymptomLogResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required this.data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  });

  factory _$SymptomLogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomLogResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'data')
  final SymptomLogDataResponse data;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'SymptomLogResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomLogResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, data, timestamp);

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomLogResponseImplCopyWith<_$SymptomLogResponseImpl> get copyWith =>
      __$$SymptomLogResponseImplCopyWithImpl<_$SymptomLogResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomLogResponseImplToJson(this);
  }
}

abstract class _SymptomLogResponse implements SymptomLogResponse {
  const factory _SymptomLogResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final SymptomLogDataResponse data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$SymptomLogResponseImpl;

  factory _SymptomLogResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomLogResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  SymptomLogDataResponse get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of SymptomLogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomLogResponseImplCopyWith<_$SymptomLogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
