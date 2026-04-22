// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_log_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SymptomLogDataResponse _$SymptomLogDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SymptomLogDataResponse.fromJson(json);
}

/// @nodoc
mixin _$SymptomLogDataResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry_time')
  String? get entryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'symptoms')
  List<SymptomDataResponse>? get symptoms => throw _privateConstructorUsedError;
  @JsonKey(name: 'pain_intensity')
  int? get painIntensity => throw _privateConstructorUsedError;
  @JsonKey(name: 'mood')
  String? get mood => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'score_snapshot')
  ScoreSnapshotDataResponse? get scoreSnapshot =>
      throw _privateConstructorUsedError;

  /// Serializes this SymptomLogDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SymptomLogDataResponseCopyWith<SymptomLogDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomLogDataResponseCopyWith<$Res> {
  factory $SymptomLogDataResponseCopyWith(
    SymptomLogDataResponse value,
    $Res Function(SymptomLogDataResponse) then,
  ) = _$SymptomLogDataResponseCopyWithImpl<$Res, SymptomLogDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'entry_time') String? entryTime,
    @JsonKey(name: 'symptoms') List<SymptomDataResponse>? symptoms,
    @JsonKey(name: 'pain_intensity') int? painIntensity,
    @JsonKey(name: 'mood') String? mood,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'score_snapshot') ScoreSnapshotDataResponse? scoreSnapshot,
  });

  $ScoreSnapshotDataResponseCopyWith<$Res>? get scoreSnapshot;
}

/// @nodoc
class _$SymptomLogDataResponseCopyWithImpl<
  $Res,
  $Val extends SymptomLogDataResponse
>
    implements $SymptomLogDataResponseCopyWith<$Res> {
  _$SymptomLogDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entryTime = freezed,
    Object? symptoms = freezed,
    Object? painIntensity = freezed,
    Object? mood = freezed,
    Object? notes = freezed,
    Object? scoreSnapshot = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            entryTime: freezed == entryTime
                ? _value.entryTime
                : entryTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            symptoms: freezed == symptoms
                ? _value.symptoms
                : symptoms // ignore: cast_nullable_to_non_nullable
                      as List<SymptomDataResponse>?,
            painIntensity: freezed == painIntensity
                ? _value.painIntensity
                : painIntensity // ignore: cast_nullable_to_non_nullable
                      as int?,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            scoreSnapshot: freezed == scoreSnapshot
                ? _value.scoreSnapshot
                : scoreSnapshot // ignore: cast_nullable_to_non_nullable
                      as ScoreSnapshotDataResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoreSnapshotDataResponseCopyWith<$Res>? get scoreSnapshot {
    if (_value.scoreSnapshot == null) {
      return null;
    }

    return $ScoreSnapshotDataResponseCopyWith<$Res>(_value.scoreSnapshot!, (
      value,
    ) {
      return _then(_value.copyWith(scoreSnapshot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymptomLogDataResponseImplCopyWith<$Res>
    implements $SymptomLogDataResponseCopyWith<$Res> {
  factory _$$SymptomLogDataResponseImplCopyWith(
    _$SymptomLogDataResponseImpl value,
    $Res Function(_$SymptomLogDataResponseImpl) then,
  ) = __$$SymptomLogDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'entry_time') String? entryTime,
    @JsonKey(name: 'symptoms') List<SymptomDataResponse>? symptoms,
    @JsonKey(name: 'pain_intensity') int? painIntensity,
    @JsonKey(name: 'mood') String? mood,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'score_snapshot') ScoreSnapshotDataResponse? scoreSnapshot,
  });

  @override
  $ScoreSnapshotDataResponseCopyWith<$Res>? get scoreSnapshot;
}

/// @nodoc
class __$$SymptomLogDataResponseImplCopyWithImpl<$Res>
    extends
        _$SymptomLogDataResponseCopyWithImpl<$Res, _$SymptomLogDataResponseImpl>
    implements _$$SymptomLogDataResponseImplCopyWith<$Res> {
  __$$SymptomLogDataResponseImplCopyWithImpl(
    _$SymptomLogDataResponseImpl _value,
    $Res Function(_$SymptomLogDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? entryTime = freezed,
    Object? symptoms = freezed,
    Object? painIntensity = freezed,
    Object? mood = freezed,
    Object? notes = freezed,
    Object? scoreSnapshot = freezed,
  }) {
    return _then(
      _$SymptomLogDataResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        entryTime: freezed == entryTime
            ? _value.entryTime
            : entryTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        symptoms: freezed == symptoms
            ? _value._symptoms
            : symptoms // ignore: cast_nullable_to_non_nullable
                  as List<SymptomDataResponse>?,
        painIntensity: freezed == painIntensity
            ? _value.painIntensity
            : painIntensity // ignore: cast_nullable_to_non_nullable
                  as int?,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        scoreSnapshot: freezed == scoreSnapshot
            ? _value.scoreSnapshot
            : scoreSnapshot // ignore: cast_nullable_to_non_nullable
                  as ScoreSnapshotDataResponse?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SymptomLogDataResponseImpl implements _SymptomLogDataResponse {
  const _$SymptomLogDataResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'entry_time') this.entryTime,
    @JsonKey(name: 'symptoms') final List<SymptomDataResponse>? symptoms,
    @JsonKey(name: 'pain_intensity') this.painIntensity,
    @JsonKey(name: 'mood') this.mood,
    @JsonKey(name: 'notes') this.notes,
    @JsonKey(name: 'score_snapshot') this.scoreSnapshot,
  }) : _symptoms = symptoms;

  factory _$SymptomLogDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymptomLogDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'entry_time')
  final String? entryTime;
  final List<SymptomDataResponse>? _symptoms;
  @override
  @JsonKey(name: 'symptoms')
  List<SymptomDataResponse>? get symptoms {
    final value = _symptoms;
    if (value == null) return null;
    if (_symptoms is EqualUnmodifiableListView) return _symptoms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pain_intensity')
  final int? painIntensity;
  @override
  @JsonKey(name: 'mood')
  final String? mood;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'score_snapshot')
  final ScoreSnapshotDataResponse? scoreSnapshot;

  @override
  String toString() {
    return 'SymptomLogDataResponse(id: $id, entryTime: $entryTime, symptoms: $symptoms, painIntensity: $painIntensity, mood: $mood, notes: $notes, scoreSnapshot: $scoreSnapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymptomLogDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.entryTime, entryTime) ||
                other.entryTime == entryTime) &&
            const DeepCollectionEquality().equals(other._symptoms, _symptoms) &&
            (identical(other.painIntensity, painIntensity) ||
                other.painIntensity == painIntensity) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.scoreSnapshot, scoreSnapshot) ||
                other.scoreSnapshot == scoreSnapshot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    entryTime,
    const DeepCollectionEquality().hash(_symptoms),
    painIntensity,
    mood,
    notes,
    scoreSnapshot,
  );

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SymptomLogDataResponseImplCopyWith<_$SymptomLogDataResponseImpl>
  get copyWith =>
      __$$SymptomLogDataResponseImplCopyWithImpl<_$SymptomLogDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SymptomLogDataResponseImplToJson(this);
  }
}

abstract class _SymptomLogDataResponse implements SymptomLogDataResponse {
  const factory _SymptomLogDataResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'entry_time') final String? entryTime,
    @JsonKey(name: 'symptoms') final List<SymptomDataResponse>? symptoms,
    @JsonKey(name: 'pain_intensity') final int? painIntensity,
    @JsonKey(name: 'mood') final String? mood,
    @JsonKey(name: 'notes') final String? notes,
    @JsonKey(name: 'score_snapshot')
    final ScoreSnapshotDataResponse? scoreSnapshot,
  }) = _$SymptomLogDataResponseImpl;

  factory _SymptomLogDataResponse.fromJson(Map<String, dynamic> json) =
      _$SymptomLogDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'entry_time')
  String? get entryTime;
  @override
  @JsonKey(name: 'symptoms')
  List<SymptomDataResponse>? get symptoms;
  @override
  @JsonKey(name: 'pain_intensity')
  int? get painIntensity;
  @override
  @JsonKey(name: 'mood')
  String? get mood;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'score_snapshot')
  ScoreSnapshotDataResponse? get scoreSnapshot;

  /// Create a copy of SymptomLogDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SymptomLogDataResponseImplCopyWith<_$SymptomLogDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
