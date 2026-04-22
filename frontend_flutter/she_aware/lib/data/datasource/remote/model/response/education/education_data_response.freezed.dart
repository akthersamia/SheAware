// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EducationDataResponse _$EducationDataResponseFromJson(
  Map<String, dynamic> json,
) {
  return _EducationDataResponse.fromJson(json);
}

/// @nodoc
mixin _$EducationDataResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'body_html')
  String? get bodyHtml => throw _privateConstructorUsedError;
  @JsonKey(name: 'sources')
  List<String>? get sources => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this EducationDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EducationDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationDataResponseCopyWith<EducationDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationDataResponseCopyWith<$Res> {
  factory $EducationDataResponseCopyWith(
    EducationDataResponse value,
    $Res Function(EducationDataResponse) then,
  ) = _$EducationDataResponseCopyWithImpl<$Res, EducationDataResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'body_html') String? bodyHtml,
    @JsonKey(name: 'sources') List<String>? sources,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'lang') String? lang,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class _$EducationDataResponseCopyWithImpl<
  $Res,
  $Val extends EducationDataResponse
>
    implements $EducationDataResponseCopyWith<$Res> {
  _$EducationDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EducationDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? category = freezed,
    Object? bodyHtml = freezed,
    Object? sources = freezed,
    Object? tags = freezed,
    Object? lang = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            bodyHtml: freezed == bodyHtml
                ? _value.bodyHtml
                : bodyHtml // ignore: cast_nullable_to_non_nullable
                      as String?,
            sources: freezed == sources
                ? _value.sources
                : sources // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            lang: freezed == lang
                ? _value.lang
                : lang // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EducationDataResponseImplCopyWith<$Res>
    implements $EducationDataResponseCopyWith<$Res> {
  factory _$$EducationDataResponseImplCopyWith(
    _$EducationDataResponseImpl value,
    $Res Function(_$EducationDataResponseImpl) then,
  ) = __$$EducationDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'body_html') String? bodyHtml,
    @JsonKey(name: 'sources') List<String>? sources,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'lang') String? lang,
    @JsonKey(name: 'updated_at') String? updatedAt,
  });
}

/// @nodoc
class __$$EducationDataResponseImplCopyWithImpl<$Res>
    extends
        _$EducationDataResponseCopyWithImpl<$Res, _$EducationDataResponseImpl>
    implements _$$EducationDataResponseImplCopyWith<$Res> {
  __$$EducationDataResponseImplCopyWithImpl(
    _$EducationDataResponseImpl _value,
    $Res Function(_$EducationDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EducationDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? category = freezed,
    Object? bodyHtml = freezed,
    Object? sources = freezed,
    Object? tags = freezed,
    Object? lang = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$EducationDataResponseImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        bodyHtml: freezed == bodyHtml
            ? _value.bodyHtml
            : bodyHtml // ignore: cast_nullable_to_non_nullable
                  as String?,
        sources: freezed == sources
            ? _value._sources
            : sources // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        lang: freezed == lang
            ? _value.lang
            : lang // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationDataResponseImpl implements _EducationDataResponse {
  const _$EducationDataResponseImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'category') this.category,
    @JsonKey(name: 'body_html') this.bodyHtml,
    @JsonKey(name: 'sources') final List<String>? sources,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'lang') this.lang,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : _sources = sources,
       _tags = tags;

  factory _$EducationDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'body_html')
  final String? bodyHtml;
  final List<String>? _sources;
  @override
  @JsonKey(name: 'sources')
  List<String>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'lang')
  final String? lang;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'EducationDataResponse(id: $id, title: $title, slug: $slug, category: $category, bodyHtml: $bodyHtml, sources: $sources, tags: $tags, lang: $lang, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationDataResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.bodyHtml, bodyHtml) ||
                other.bodyHtml == bodyHtml) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    slug,
    category,
    bodyHtml,
    const DeepCollectionEquality().hash(_sources),
    const DeepCollectionEquality().hash(_tags),
    lang,
    updatedAt,
  );

  /// Create a copy of EducationDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationDataResponseImplCopyWith<_$EducationDataResponseImpl>
  get copyWith =>
      __$$EducationDataResponseImplCopyWithImpl<_$EducationDataResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationDataResponseImplToJson(this);
  }
}

abstract class _EducationDataResponse implements EducationDataResponse {
  const factory _EducationDataResponse({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'category') final String? category,
    @JsonKey(name: 'body_html') final String? bodyHtml,
    @JsonKey(name: 'sources') final List<String>? sources,
    @JsonKey(name: 'tags') final List<String>? tags,
    @JsonKey(name: 'lang') final String? lang,
    @JsonKey(name: 'updated_at') final String? updatedAt,
  }) = _$EducationDataResponseImpl;

  factory _EducationDataResponse.fromJson(Map<String, dynamic> json) =
      _$EducationDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'body_html')
  String? get bodyHtml;
  @override
  @JsonKey(name: 'sources')
  List<String>? get sources;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'lang')
  String? get lang;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of EducationDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationDataResponseImplCopyWith<_$EducationDataResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
