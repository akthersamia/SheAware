// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomDataResponse _$SymptomDataResponseFromJson(Map<String, dynamic> json) {
  return _SymptomDataResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomDataResponse {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'severity')
  int? get severity => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_value')
  int? get durationValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_unit')
  String? get durationUnit => throw _privateConstructorUsedError;

  /// Serializes this SymptomDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomDataResponseCopyWith<SymptomDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomDataResponseCopyWith<$Res> {
  factory $SymptomDataResponseCopyWith(
    SymptomDataResponse value,
    $Res Function(SymptomDataResponse) then,
  ) = _$SymptomDataResponseCopyWithImpl<$Res, SymptomDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'severity') int? severity,
    @JsonKey(name: 'duration_value') int? durationValue,
    @JsonKey(name: 'duration_unit') String? durationUnit,
  });
}

/// @nodoc
class _$SymptomDataResponseCopyWithImpl<$Res, $Val extends SymptomDataResponse>
    implements $SymptomDataResponseCopyWith<$Res> {
  _$SymptomDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? severity = freezed,
    Object? durationValue = freezed,
    Object? durationUnit = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            severity: freezed == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as int?,
            durationValue: freezed == durationValue
                ? _value.durationValue
                : durationValue // ignore: cast_nullable_to_non_nullable
                      as int?,
            durationUnit: freezed == durationUnit
                ? _value.durationUnit
                : durationUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SymptomDataResponseImplCopyWith<$Res>
    implements $SymptomDataResponseCopyWith<$Res> {
  factory _$$SymptomDataResponseImplCopyWith(
    _$SymptomDataResponseImpl value,
    $Res Function(_$SymptomDataResponseImpl) then,
  ) = __$$SymptomDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'severity') int? severity,
    @JsonKey(name: 'duration_value') int? durationValue,
    @JsonKey(name: 'duration_unit') String? durationUnit,
  });
}

/// @nodoc
class __$$SymptomDataResponseImplCopyWithImpl<$Res>
    extends _$SymptomDataResponseCopyWithImpl<$Res, _$SymptomDataResponseImpl>
    implements _$$SymptomDataResponseImplCopyWith<$Res> {
  __$$SymptomDataResponseImplCopyWithImpl(
    _$SymptomDataResponseImpl _value,
    $Res Function(_$SymptomDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? severity = freezed,
    Object? durationValue = freezed,
    Object? durationUnit = freezed,
  }) {
    return _then(
      _$SymptomDataResponseImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        severity: freezed == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as int?,
        durationValue: freezed == durationValue
            ? _value.durationValue
            : durationValue // ignore: cast_nullable_to_non_nullable
                  as int?,
        durationUnit: freezed == durationUnit
            ? _value.durationUnit
            : durationUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomDataResponseImpl implements _SymptomDataResponse {
  const _$SymptomDataResponseImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'severity') this.severity,
    @JsonKey(name: 'duration_value') this.durationValue,
    @JsonKey(name: 'duration_unit') this.durationUnit,
  });

  factory _$SymptomDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'severity')
  final int? severity;
  @override
  @JsonKey(name: 'duration_value')
  final int? durationValue;
  @override
  @JsonKey(name: 'duration_unit')
  final String? durationUnit;

  @override
  String toString() {
    return 'SymptomDataResponse(name: $name, severity: $severity, durationValue: $durationValue, durationUnit: $durationUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomDataResponseImpl &&
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

  /// Create a copy of SymptomDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomDataResponseImplCopyWith<_$SymptomDataResponseImpl> get copyWith =>
      __$$SymptomDataResponseImplCopyWithImpl<_$SymptomDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomDataResponseImplToJson(this);
  }
}

abstract class _SymptomDataResponse implements SymptomDataResponse {
  const factory _SymptomDataResponse({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'severity') final int? severity,
    @JsonKey(name: 'duration_value') final int? durationValue,
    @JsonKey(name: 'duration_unit') final String? durationUnit,
  }) = _$SymptomDataResponseImpl;

  factory _SymptomDataResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'severity')
  int? get severity;
  @override
  @JsonKey(name: 'duration_value')
  int? get durationValue;
  @override
  @JsonKey(name: 'duration_unit')
  String? get durationUnit;

  /// Create a copy of SymptomDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomDataResponseImplCopyWith<_$SymptomDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
