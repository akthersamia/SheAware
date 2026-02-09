// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportResponse _$SupportResponseFromJson(Map<String, dynamic> json) {
  return _SupportResponse.fromJson(json);
}

/// @nodoc
mixin _$SupportResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<SupportDataResponse> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SupportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportResponseCopyWith<SupportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportResponseCopyWith<$Res> {
  factory $SupportResponseCopyWith(
    SupportResponse value,
    $Res Function(SupportResponse) then,
  ) = _$SupportResponseCopyWithImpl<$Res, SupportResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') List<SupportDataResponse> data,
    @JsonKey(name: 'timestamp') String timestamp,
  });
}

/// @nodoc
class _$SupportResponseCopyWithImpl<$Res, $Val extends SupportResponse>
    implements $SupportResponseCopyWith<$Res> {
  _$SupportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportResponse
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
                      as List<SupportDataResponse>,
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
abstract class _$$SupportResponseImplCopyWith<$Res>
    implements $SupportResponseCopyWith<$Res> {
  factory _$$SupportResponseImplCopyWith(
    _$SupportResponseImpl value,
    $Res Function(_$SupportResponseImpl) then,
  ) = __$$SupportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'success') bool success,
    @JsonKey(name: 'message') String message,
    @JsonKey(name: 'data') List<SupportDataResponse> data,
    @JsonKey(name: 'timestamp') String timestamp,
  });
}

/// @nodoc
class __$$SupportResponseImplCopyWithImpl<$Res>
    extends _$SupportResponseCopyWithImpl<$Res, _$SupportResponseImpl>
    implements _$$SupportResponseImplCopyWith<$Res> {
  __$$SupportResponseImplCopyWithImpl(
    _$SupportResponseImpl _value,
    $Res Function(_$SupportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportResponse
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
      _$SupportResponseImpl(
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
                  as List<SupportDataResponse>,
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
class _$SupportResponseImpl implements _SupportResponse {
  const _$SupportResponseImpl({
    @JsonKey(name: 'success') required this.success,
    @JsonKey(name: 'message') required this.message,
    @JsonKey(name: 'data') required final List<SupportDataResponse> data,
    @JsonKey(name: 'timestamp') required this.timestamp,
  }) : _data = data;

  factory _$SupportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<SupportDataResponse> _data;
  @override
  @JsonKey(name: 'data')
  List<SupportDataResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'SupportResponse(success: $success, message: $message, data: $data, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportResponseImpl &&
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

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportResponseImplCopyWith<_$SupportResponseImpl> get copyWith =>
      __$$SupportResponseImplCopyWithImpl<_$SupportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportResponseImplToJson(this);
  }
}

abstract class _SupportResponse implements SupportResponse {
  const factory _SupportResponse({
    @JsonKey(name: 'success') required final bool success,
    @JsonKey(name: 'message') required final String message,
    @JsonKey(name: 'data') required final List<SupportDataResponse> data,
    @JsonKey(name: 'timestamp') required final String timestamp,
  }) = _$SupportResponseImpl;

  factory _SupportResponse.fromJson(Map<String, dynamic> json) =
      _$SupportResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'data')
  List<SupportDataResponse> get data;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of SupportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportResponseImplCopyWith<_$SupportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
