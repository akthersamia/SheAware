// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EducationResponse _$EducationResponseFromJson(Map<String, dynamic> json) {
  return _EducationResponse.fromJson(json);
}

/// @nodoc
mixin _$EducationResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<EducationDataResponse> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this EducationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationResponseCopyWith<EducationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationResponseCopyWith<$Res> {
  factory $EducationResponseCopyWith(
    EducationResponse value,
    $Res Function(EducationResponse) then,
  ) = _$EducationResponseCopyWithImpl<$Res, EducationResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') List<EducationDataResponse> data,
    @JsonKey(name: 'timestamp') String timestamp,
  });
}

/// @nodoc
class _$EducationResponseCopyWithImpl<$Res, $Val extends EducationResponse>
    implements $EducationResponseCopyWith<$Res> {
  _$EducationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationResponse
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
                      as List<EducationDataResponse>,
            timestamp: null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EducationResponseImplCopyWith<$Res>
    implements $EducationResponseCopyWith<$Res> {
  factory _$$EducationResponseImplCopyWith(
    _$EducationResponseImpl value,
    $Res Function(_$EducationResponseImpl) then,
  ) = __$$EducationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') List<EducationDataResponse> data,
    @JsonKey(name: 'timestamp') String timestamp,
  });
}

/// @nodoc
class __$$EducationResponseImplCopyWithImpl<$Res>
    extends _$EducationResponseCopyWithImpl<$Res, _$EducationResponseImpl>
    implements _$$EducationResponseImplCopyWith<$Res> {
  __$$EducationResponseImplCopyWithImpl(
    _$EducationResponseImpl _value,
    $Res Function(_$EducationResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EducationResponse
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
      _$EducationResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<EducationDataResponse>,
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
class _$EducationResponseImpl implements _EducationResponse {
  const _$EducationResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required final List<EducationDataResponse> data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  }) : _data = data;

  factory _$EducationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<EducationDataResponse> _data;
  @override
  @JsonKey(name: 'data')
  List<EducationDataResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'EducationResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_data),
    timestamp,
  );

  /// Create a copy of EducationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationResponseImplCopyWith<_$EducationResponseImpl> get copyWith =>
      __$$EducationResponseImplCopyWithImpl<_$EducationResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationResponseImplToJson(this);
  }
}

abstract class _EducationResponse implements EducationResponse {
  const factory _EducationResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final List<EducationDataResponse> data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$EducationResponseImpl;

  factory _EducationResponse.fromJson(Map<String, dynamic> json) =
      _$EducationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  List<EducationDataResponse> get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of EducationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationResponseImplCopyWith<_$EducationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
