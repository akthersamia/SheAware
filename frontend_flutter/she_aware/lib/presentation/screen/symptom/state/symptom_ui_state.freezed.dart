// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symptom_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SymptomUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomUiStateCopyWith<$Res> {
  factory $SymptomUiStateCopyWith(
    SymptomUiState value,
    $Res Function(SymptomUiState) then,
  ) = _$SymptomUiStateCopyWithImpl<$Res, SymptomUiState>;
}

/// @nodoc
class _$SymptomUiStateCopyWithImpl<$Res, $Val extends SymptomUiState>
    implements $SymptomUiStateCopyWith<$Res> {
  _$SymptomUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
    _$InitialStateImpl value,
    $Res Function(_$InitialStateImpl) then,
  ) = __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$SymptomUiStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
    _$InitialStateImpl _value,
    $Res Function(_$InitialStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'SymptomUiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements SymptomUiState {
  const factory InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
    _$LoadingStateImpl value,
    $Res Function(_$LoadingStateImpl) then,
  ) = __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$SymptomUiStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
    _$LoadingStateImpl _value,
    $Res Function(_$LoadingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'SymptomUiState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements SymptomUiState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessLogSymptomStateImplCopyWith<$Res> {
  factory _$$SuccessLogSymptomStateImplCopyWith(
    _$SuccessLogSymptomStateImpl value,
    $Res Function(_$SuccessLogSymptomStateImpl) then,
  ) = __$$SuccessLogSymptomStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SymptomLog logSymptom});
}

/// @nodoc
class __$$SuccessLogSymptomStateImplCopyWithImpl<$Res>
    extends _$SymptomUiStateCopyWithImpl<$Res, _$SuccessLogSymptomStateImpl>
    implements _$$SuccessLogSymptomStateImplCopyWith<$Res> {
  __$$SuccessLogSymptomStateImplCopyWithImpl(
    _$SuccessLogSymptomStateImpl _value,
    $Res Function(_$SuccessLogSymptomStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? logSymptom = null}) {
    return _then(
      _$SuccessLogSymptomStateImpl(
        logSymptom: null == logSymptom
            ? _value.logSymptom
            : logSymptom // ignore: cast_nullable_to_non_nullable
                  as SymptomLog,
      ),
    );
  }
}

/// @nodoc

class _$SuccessLogSymptomStateImpl implements SuccessLogSymptomState {
  const _$SuccessLogSymptomStateImpl({required this.logSymptom});

  @override
  final SymptomLog logSymptom;

  @override
  String toString() {
    return 'SymptomUiState.successLogSymptom(logSymptom: $logSymptom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLogSymptomStateImpl &&
            (identical(other.logSymptom, logSymptom) ||
                other.logSymptom == logSymptom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logSymptom);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLogSymptomStateImplCopyWith<_$SuccessLogSymptomStateImpl>
  get copyWith =>
      __$$SuccessLogSymptomStateImplCopyWithImpl<_$SuccessLogSymptomStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) {
    return successLogSymptom(logSymptom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) {
    return successLogSymptom?.call(logSymptom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successLogSymptom != null) {
      return successLogSymptom(logSymptom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return successLogSymptom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return successLogSymptom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successLogSymptom != null) {
      return successLogSymptom(this);
    }
    return orElse();
  }
}

abstract class SuccessLogSymptomState implements SymptomUiState {
  const factory SuccessLogSymptomState({required final SymptomLog logSymptom}) =
      _$SuccessLogSymptomStateImpl;

  SymptomLog get logSymptom;

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessLogSymptomStateImplCopyWith<_$SuccessLogSymptomStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSymptomHistoryStateImplCopyWith<$Res> {
  factory _$$SuccessSymptomHistoryStateImplCopyWith(
    _$SuccessSymptomHistoryStateImpl value,
    $Res Function(_$SuccessSymptomHistoryStateImpl) then,
  ) = __$$SuccessSymptomHistoryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SymptomLog> symptomHistory});
}

/// @nodoc
class __$$SuccessSymptomHistoryStateImplCopyWithImpl<$Res>
    extends _$SymptomUiStateCopyWithImpl<$Res, _$SuccessSymptomHistoryStateImpl>
    implements _$$SuccessSymptomHistoryStateImplCopyWith<$Res> {
  __$$SuccessSymptomHistoryStateImplCopyWithImpl(
    _$SuccessSymptomHistoryStateImpl _value,
    $Res Function(_$SuccessSymptomHistoryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? symptomHistory = null}) {
    return _then(
      _$SuccessSymptomHistoryStateImpl(
        symptomHistory: null == symptomHistory
            ? _value._symptomHistory
            : symptomHistory // ignore: cast_nullable_to_non_nullable
                  as List<SymptomLog>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessSymptomHistoryStateImpl implements SuccessSymptomHistoryState {
  const _$SuccessSymptomHistoryStateImpl({
    required final List<SymptomLog> symptomHistory,
  }) : _symptomHistory = symptomHistory;

  final List<SymptomLog> _symptomHistory;
  @override
  List<SymptomLog> get symptomHistory {
    if (_symptomHistory is EqualUnmodifiableListView) return _symptomHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_symptomHistory);
  }

  @override
  String toString() {
    return 'SymptomUiState.successSymptomHistory(symptomHistory: $symptomHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSymptomHistoryStateImpl &&
            const DeepCollectionEquality().equals(
              other._symptomHistory,
              _symptomHistory,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_symptomHistory),
  );

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSymptomHistoryStateImplCopyWith<_$SuccessSymptomHistoryStateImpl>
  get copyWith =>
      __$$SuccessSymptomHistoryStateImplCopyWithImpl<
        _$SuccessSymptomHistoryStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) {
    return successSymptomHistory(symptomHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) {
    return successSymptomHistory?.call(symptomHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (successSymptomHistory != null) {
      return successSymptomHistory(symptomHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return successSymptomHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return successSymptomHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSymptomHistory != null) {
      return successSymptomHistory(this);
    }
    return orElse();
  }
}

abstract class SuccessSymptomHistoryState implements SymptomUiState {
  const factory SuccessSymptomHistoryState({
    required final List<SymptomLog> symptomHistory,
  }) = _$SuccessSymptomHistoryStateImpl;

  List<SymptomLog> get symptomHistory;

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSymptomHistoryStateImplCopyWith<_$SuccessSymptomHistoryStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
    _$ErrorStateImpl value,
    $Res Function(_$ErrorStateImpl) then,
  ) = __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$SymptomUiStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
    _$ErrorStateImpl _value,
    $Res Function(_$ErrorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SymptomUiState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SymptomLog logSymptom) successLogSymptom,
    required TResult Function(List<SymptomLog> symptomHistory)
    successSymptomHistory,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SymptomLog logSymptom)? successLogSymptom,
    TResult? Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SymptomLog logSymptom)? successLogSymptom,
    TResult Function(List<SymptomLog> symptomHistory)? successSymptomHistory,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessLogSymptomState value) successLogSymptom,
    required TResult Function(SuccessSymptomHistoryState value)
    successSymptomHistory,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult? Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessLogSymptomState value)? successLogSymptom,
    TResult Function(SuccessSymptomHistoryState value)? successSymptomHistory,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements SymptomUiState {
  const factory ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of SymptomUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
