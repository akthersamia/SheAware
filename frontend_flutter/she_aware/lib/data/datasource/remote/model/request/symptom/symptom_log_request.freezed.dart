// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_log_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomLogRequest _$SymptomLogRequestFromJson(Map<String, dynamic> json) {
  return _SymptomLogRequest.fromJson(json);
}

/// @nodoc
mixin _$SymptomLogRequest {
  @JsonKey(name: 'device_id')
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms')
  List<SymptomRequest> get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: 'pain_intensity')
  int get painIntensity => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood')
  String get mood => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes', includeIfNull: false)
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this SymptomLogRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomLogRequestCopyWith<SymptomLogRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomLogRequestCopyWith<$Res> {
  factory $SymptomLogRequestCopyWith(
    SymptomLogRequest value,
    $Res Function(SymptomLogRequest) then,
  ) = _$SymptomLogRequestCopyWithImpl<$Res, SymptomLogRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'device_id') String deviceId,
    @JsonKey(name: 'symptoms') List<SymptomRequest> symptoms,
    @JsonKey(name: 'pain_intensity') int painIntensity,
    @JsonKey(name: 'mood') String mood,
    @JsonKey(name: 'notes', includeIfNull: false) String? notes,
  });
}

/// @nodoc
class _$SymptomLogRequestCopyWithImpl<$Res, $Val extends SymptomLogRequest>
    implements $SymptomLogRequestCopyWith<$Res> {
  _$SymptomLogRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? symptoms = null,
    Object? painIntensity = null,
    Object? mood = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            deviceId: null == deviceId
                ? _value.deviceId
                : deviceId // ignore: cast_nullable_to_non_nullable
                      as String,
            symptoms: null == symptoms
                ? _value.symptoms
                : symptoms // ignore: cast_nullable_to_non_nullable
                      as List<SymptomRequest>,
            painIntensity: null == painIntensity
                ? _value.painIntensity
                : painIntensity // ignore: cast_nullable_to_non_nullable
                      as int,
            mood: null == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SymptomLogRequestImplCopyWith<$Res>
    implements $SymptomLogRequestCopyWith<$Res> {
  factory _$$SymptomLogRequestImplCopyWith(
    _$SymptomLogRequestImpl value,
    $Res Function(_$SymptomLogRequestImpl) then,
  ) = __$$SymptomLogRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'device_id') String deviceId,
    @JsonKey(name: 'symptoms') List<SymptomRequest> symptoms,
    @JsonKey(name: 'pain_intensity') int painIntensity,
    @JsonKey(name: 'mood') String mood,
    @JsonKey(name: 'notes', includeIfNull: false) String? notes,
  });
}

/// @nodoc
class __$$SymptomLogRequestImplCopyWithImpl<$Res>
    extends _$SymptomLogRequestCopyWithImpl<$Res, _$SymptomLogRequestImpl>
    implements _$$SymptomLogRequestImplCopyWith<$Res> {
  __$$SymptomLogRequestImplCopyWithImpl(
    _$SymptomLogRequestImpl _value,
    $Res Function(_$SymptomLogRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
    Object? symptoms = null,
    Object? painIntensity = null,
    Object? mood = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$SymptomLogRequestImpl(
        deviceId: null == deviceId
            ? _value.deviceId
            : deviceId // ignore: cast_nullable_to_non_nullable
                  as String,
        symptoms: null == symptoms
            ? _value._symptoms
            : symptoms // ignore: cast_nullable_to_non_nullable
                  as List<SymptomRequest>,
        painIntensity: null == painIntensity
            ? _value.painIntensity
            : painIntensity // ignore: cast_nullable_to_non_nullable
                  as int,
        mood: null == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomLogRequestImpl implements _SymptomLogRequest {
  const _$SymptomLogRequestImpl({
    @JsonKey(name: 'device_id') required this.deviceId,
    @JsonKey(name: 'symptoms') required final List<SymptomRequest> symptoms,
    @JsonKey(name: 'pain_intensity') required this.painIntensity,
    @JsonKey(name: 'mood') required this.mood,
    @JsonKey(name: 'notes', includeIfNull: false) this.notes,
  }) : _symptoms = symptoms;

  factory _$SymptomLogRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomLogRequestImplFromJson(json);

  @override
  @JsonKey(name: 'device_id')
  final String deviceId;
  final List<SymptomRequest> _symptoms;
  @override
  @JsonKey(name: 'symptoms')
  List<SymptomRequest> get symptoms {
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptoms);
  }

  @override
  @JsonKey(name: 'pain_intensity')
  final int painIntensity;
  @override
  @JsonKey(name: 'mood')
  final String mood;
  @override
  @JsonKey(name: 'notes', includeIfNull: false)
  final String? notes;

  @override
  String toString() {
    return 'SymptomLogRequest(deviceId: $deviceId, symptoms: $symptoms, painIntensity: $painIntensity, mood: $mood, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomLogRequestImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.painIntensity, painIntensity) ||
                other.painIntensity == painIntensity) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deviceId,
    const DeepCollectionEquality().hash(_symptoms),
    painIntensity,
    mood,
    notes,
  );

  /// Create a copy of SymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomLogRequestImplCopyWith<_$SymptomLogRequestImpl> get copyWith =>
      __$$SymptomLogRequestImplCopyWithImpl<_$SymptomLogRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomLogRequestImplToJson(this);
  }
}

abstract class _SymptomLogRequest implements SymptomLogRequest {
  const factory _SymptomLogRequest({
    @JsonKey(name: 'device_id') required final String deviceId,
    @JsonKey(name: 'symptoms') required final List<SymptomRequest> symptoms,
    @JsonKey(name: 'pain_intensity') required final int painIntensity,
    @JsonKey(name: 'mood') required final String mood,
    @JsonKey(name: 'notes', includeIfNull: false) final String? notes,
  }) = _$SymptomLogRequestImpl;

  factory _SymptomLogRequest.fromJson(Map<String, dynamic> json) =
      _$SymptomLogRequestImpl.fromJson;

  @override
  @JsonKey(name: 'device_id')
  String get deviceId;
  @override
  @JsonKey(name: 'symptoms')
  List<SymptomRequest> get symptoms;
  @override
  @JsonKey(name: 'pain_intensity')
  int get painIntensity;
  @override
  @JsonKey(name: 'mood')
  String get mood;
  @override
  @JsonKey(name: 'notes', includeIfNull: false)
  String? get notes;

  /// Create a copy of SymptomLogRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomLogRequestImplCopyWith<_$SymptomLogRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
