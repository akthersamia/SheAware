// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomRequest _$SymptomRequestFromJson(Map<String, dynamic> json) {
  return _SymptomRequest.fromJson(json);
}

/// @nodoc
mixin _$SymptomRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'severity')
  int get severity => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_value')
  int get durationValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_unit')
  String get durationUnit => throw _privateConstructorUsedError;

  /// Serializes this SymptomRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomRequestCopyWith<SymptomRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomRequestCopyWith<$Res> {
  factory $SymptomRequestCopyWith(
    SymptomRequest value,
    $Res Function(SymptomRequest) then,
  ) = _$SymptomRequestCopyWithImpl<$Res, SymptomRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'severity') int severity,
    @JsonKey(name: 'duration_value') int durationValue,
    @JsonKey(name: 'duration_unit') String durationUnit,
  });
}

/// @nodoc
class _$SymptomRequestCopyWithImpl<$Res, $Val extends SymptomRequest>
    implements $SymptomRequestCopyWith<$Res> {
  _$SymptomRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? severity = null,
    Object? durationValue = null,
    Object? durationUnit = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as int,
            durationValue: null == durationValue
                ? _value.durationValue
                : durationValue // ignore: cast_nullable_to_non_nullable
                      as int,
            durationUnit: null == durationUnit
                ? _value.durationUnit
                : durationUnit // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SymptomRequestImplCopyWith<$Res>
    implements $SymptomRequestCopyWith<$Res> {
  factory _$$SymptomRequestImplCopyWith(
    _$SymptomRequestImpl value,
    $Res Function(_$SymptomRequestImpl) then,
  ) = __$$SymptomRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'severity') int severity,
    @JsonKey(name: 'duration_value') int durationValue,
    @JsonKey(name: 'duration_unit') String durationUnit,
  });
}

/// @nodoc
class __$$SymptomRequestImplCopyWithImpl<$Res>
    extends _$SymptomRequestCopyWithImpl<$Res, _$SymptomRequestImpl>
    implements _$$SymptomRequestImplCopyWith<$Res> {
  __$$SymptomRequestImplCopyWithImpl(
    _$SymptomRequestImpl _value,
    $Res Function(_$SymptomRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? severity = null,
    Object? durationValue = null,
    Object? durationUnit = null,
  }) {
    return _then(
      _$SymptomRequestImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as int,
        durationValue: null == durationValue
            ? _value.durationValue
            : durationValue // ignore: cast_nullable_to_non_nullable
                  as int,
        durationUnit: null == durationUnit
            ? _value.durationUnit
            : durationUnit // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomRequestImpl implements _SymptomRequest {
  const _$SymptomRequestImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'severity') required this.severity,
    @JsonKey(name: 'duration_value') required this.durationValue,
    @JsonKey(name: 'duration_unit') required this.durationUnit,
  });

  factory _$SymptomRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'severity')
  final int severity;
  @override
  @JsonKey(name: 'duration_value')
  final int durationValue;
  @override
  @JsonKey(name: 'duration_unit')
  final String durationUnit;

  @override
  String toString() {
    return 'SymptomRequest(name: $name, severity: $severity, durationValue: $durationValue, durationUnit: $durationUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.durationValue, durationValue) ||
                other.durationValue == durationValue) &&
            (identical(other.durationUnit, durationUnit) ||
                other.durationUnit == durationUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, severity, durationValue, durationUnit);

  /// Create a copy of SymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomRequestImplCopyWith<_$SymptomRequestImpl> get copyWith =>
      __$$SymptomRequestImplCopyWithImpl<_$SymptomRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomRequestImplToJson(this);
  }
}

abstract class _SymptomRequest implements SymptomRequest {
  const factory _SymptomRequest({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'severity') required final int severity,
    @JsonKey(name: 'duration_value') required final int durationValue,
    @JsonKey(name: 'duration_unit') required final String durationUnit,
  }) = _$SymptomRequestImpl;

  factory _SymptomRequest.fromJson(Map<String, dynamic> json) =
      _$SymptomRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'severity')
  int get severity;
  @override
  @JsonKey(name: 'duration_value')
  int get durationValue;
  @override
  @JsonKey(name: 'duration_unit')
  String get durationUnit;

  /// Create a copy of SymptomRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomRequestImplCopyWith<_$SymptomRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
