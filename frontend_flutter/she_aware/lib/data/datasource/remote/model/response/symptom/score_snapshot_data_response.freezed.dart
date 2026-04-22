// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_snapshot_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScoreSnapshotDataResponse _$ScoreSnapshotDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ScoreSnapshotDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ScoreSnapshotDataResponse {
  @JsonKey(name: 'score')
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'flags')
  List<String>? get flags => throw _privateConstructorUsedError;
  @JsonKey(name: 'explanation')
  String? get explanation => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ScoreSnapshotDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoreSnapshotDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoreSnapshotDataResponseCopyWith<ScoreSnapshotDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreSnapshotDataResponseCopyWith<$Res> {
  factory $ScoreSnapshotDataResponseCopyWith(
    ScoreSnapshotDataResponse value,
    $Res Function(ScoreSnapshotDataResponse) then,
  ) = _$ScoreSnapshotDataResponseCopyWithImpl<$Res, ScoreSnapshotDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'flags') List<String>? flags,
    @JsonKey(name: 'explanation') String? explanation,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class _$ScoreSnapshotDataResponseCopyWithImpl<
  $Res,
  $Val extends ScoreSnapshotDataResponse
>
    implements $ScoreSnapshotDataResponseCopyWith<$Res> {
  _$ScoreSnapshotDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoreSnapshotDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? category = freezed,
    Object? flags = freezed,
    Object? explanation = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            flags: freezed == flags
                ? _value.flags
                : flags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            explanation: freezed == explanation
                ? _value.explanation
                : explanation // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScoreSnapshotDataResponseImplCopyWith<$Res>
    implements $ScoreSnapshotDataResponseCopyWith<$Res> {
  factory _$$ScoreSnapshotDataResponseImplCopyWith(
    _$ScoreSnapshotDataResponseImpl value,
    $Res Function(_$ScoreSnapshotDataResponseImpl) then,
  ) = __$$ScoreSnapshotDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'flags') List<String>? flags,
    @JsonKey(name: 'explanation') String? explanation,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class __$$ScoreSnapshotDataResponseImplCopyWithImpl<$Res>
    extends
        _$ScoreSnapshotDataResponseCopyWithImpl<
          $Res,
          _$ScoreSnapshotDataResponseImpl
        >
    implements _$$ScoreSnapshotDataResponseImplCopyWith<$Res> {
  __$$ScoreSnapshotDataResponseImplCopyWithImpl(
    _$ScoreSnapshotDataResponseImpl _value,
    $Res Function(_$ScoreSnapshotDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScoreSnapshotDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
    Object? category = freezed,
    Object? flags = freezed,
    Object? explanation = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ScoreSnapshotDataResponseImpl(
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        flags: freezed == flags
            ? _value._flags
            : flags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        explanation: freezed == explanation
            ? _value.explanation
            : explanation // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoreSnapshotDataResponseImpl implements _ScoreSnapshotDataResponse {
  const _$ScoreSnapshotDataResponseImpl({
    @JsonKey(name: 'score') this.score,
    @JsonKey(name: 'category') this.category,
    @JsonKey(name: 'flags') final List<String>? flags,
    @JsonKey(name: 'explanation') this.explanation,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _flags = flags;

  factory _$ScoreSnapshotDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoreSnapshotDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'score')
  final int? score;
  @override
  @JsonKey(name: 'category')
  final String? category;
  final List<String>? _flags;
  @override
  @JsonKey(name: 'flags')
  List<String>? get flags {
    final value = _flags;
    if (value == null) return null;
    if (_flags is EqualUnmodifiableListView) return _flags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'explanation')
  final String? explanation;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'ScoreSnapshotDataResponse(score: $score, category: $category, flags: $flags, explanation: $explanation, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoreSnapshotDataResponseImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._flags, _flags) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    score,
    category,
    const DeepCollectionEquality().hash(_flags),
    explanation,
    createdAt,
  );

  /// Create a copy of ScoreSnapshotDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoreSnapshotDataResponseImplCopyWith<_$ScoreSnapshotDataResponseImpl>
  get copyWith =>
      __$$ScoreSnapshotDataResponseImplCopyWithImpl<
        _$ScoreSnapshotDataResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoreSnapshotDataResponseImplToJson(this);
  }
}

abstract class _ScoreSnapshotDataResponse implements ScoreSnapshotDataResponse {
  const factory _ScoreSnapshotDataResponse({
    @JsonKey(name: 'score') final int? score,
    @JsonKey(name: 'category') final String? category,
    @JsonKey(name: 'flags') final List<String>? flags,
    @JsonKey(name: 'explanation') final String? explanation,
    @JsonKey(name: 'created_at') final String? createdAt,
  }) = _$ScoreSnapshotDataResponseImpl;

  factory _ScoreSnapshotDataResponse.fromJson(Map<String, dynamic> json) =
      _$ScoreSnapshotDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'score')
  int? get score;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'flags')
  List<String>? get flags;
  @override
  @JsonKey(name: 'explanation')
  String? get explanation;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of ScoreSnapshotDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoreSnapshotDataResponseImplCopyWith<_$ScoreSnapshotDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
