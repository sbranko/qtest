// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsBO movieDetails) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsBO movieDetails)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsBO movieDetails)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetails value) initial,
    required TResult Function(LoadingDetails value) loading,
    required TResult Function(LoadedDetails value) loaded,
    required TResult Function(ErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetails value)? initial,
    TResult? Function(LoadingDetails value)? loading,
    TResult? Function(LoadedDetails value)? loaded,
    TResult? Function(ErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetails value)? initial,
    TResult Function(LoadingDetails value)? loading,
    TResult Function(LoadedDetails value)? loaded,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialDetailsImplCopyWith<$Res> {
  factory _$$InitialDetailsImplCopyWith(_$InitialDetailsImpl value,
          $Res Function(_$InitialDetailsImpl) then) =
      __$$InitialDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$InitialDetailsImpl>
    implements _$$InitialDetailsImplCopyWith<$Res> {
  __$$InitialDetailsImplCopyWithImpl(
      _$InitialDetailsImpl _value, $Res Function(_$InitialDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialDetailsImpl implements InitialDetails {
  const _$InitialDetailsImpl();

  @override
  String toString() {
    return 'MovieDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsBO movieDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsBO movieDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsBO movieDetails)? loaded,
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
    required TResult Function(InitialDetails value) initial,
    required TResult Function(LoadingDetails value) loading,
    required TResult Function(LoadedDetails value) loaded,
    required TResult Function(ErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetails value)? initial,
    TResult? Function(LoadingDetails value)? loading,
    TResult? Function(LoadedDetails value)? loaded,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetails value)? initial,
    TResult Function(LoadingDetails value)? loading,
    TResult Function(LoadedDetails value)? loaded,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialDetails implements MovieDetailsState {
  const factory InitialDetails() = _$InitialDetailsImpl;
}

/// @nodoc
abstract class _$$LoadingDetailsImplCopyWith<$Res> {
  factory _$$LoadingDetailsImplCopyWith(_$LoadingDetailsImpl value,
          $Res Function(_$LoadingDetailsImpl) then) =
      __$$LoadingDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$LoadingDetailsImpl>
    implements _$$LoadingDetailsImplCopyWith<$Res> {
  __$$LoadingDetailsImplCopyWithImpl(
      _$LoadingDetailsImpl _value, $Res Function(_$LoadingDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingDetailsImpl implements LoadingDetails {
  const _$LoadingDetailsImpl();

  @override
  String toString() {
    return 'MovieDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsBO movieDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsBO movieDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsBO movieDetails)? loaded,
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
    required TResult Function(InitialDetails value) initial,
    required TResult Function(LoadingDetails value) loading,
    required TResult Function(LoadedDetails value) loaded,
    required TResult Function(ErrorDetails value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetails value)? initial,
    TResult? Function(LoadingDetails value)? loading,
    TResult? Function(LoadedDetails value)? loaded,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetails value)? initial,
    TResult Function(LoadingDetails value)? loading,
    TResult Function(LoadedDetails value)? loaded,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDetails implements MovieDetailsState {
  const factory LoadingDetails() = _$LoadingDetailsImpl;
}

/// @nodoc
abstract class _$$LoadedDetailsImplCopyWith<$Res> {
  factory _$$LoadedDetailsImplCopyWith(
          _$LoadedDetailsImpl value, $Res Function(_$LoadedDetailsImpl) then) =
      __$$LoadedDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetailsBO movieDetails});
}

/// @nodoc
class __$$LoadedDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$LoadedDetailsImpl>
    implements _$$LoadedDetailsImplCopyWith<$Res> {
  __$$LoadedDetailsImplCopyWithImpl(
      _$LoadedDetailsImpl _value, $Res Function(_$LoadedDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = null,
  }) {
    return _then(_$LoadedDetailsImpl(
      null == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetailsBO,
    ));
  }
}

/// @nodoc

class _$LoadedDetailsImpl implements LoadedDetails {
  const _$LoadedDetailsImpl(this.movieDetails);

  @override
  final MovieDetailsBO movieDetails;

  @override
  String toString() {
    return 'MovieDetailsState.loaded(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDetailsImpl &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieDetails);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDetailsImplCopyWith<_$LoadedDetailsImpl> get copyWith =>
      __$$LoadedDetailsImplCopyWithImpl<_$LoadedDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsBO movieDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsBO movieDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsBO movieDetails)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetails value) initial,
    required TResult Function(LoadingDetails value) loading,
    required TResult Function(LoadedDetails value) loaded,
    required TResult Function(ErrorDetails value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetails value)? initial,
    TResult? Function(LoadingDetails value)? loading,
    TResult? Function(LoadedDetails value)? loaded,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetails value)? initial,
    TResult Function(LoadingDetails value)? loading,
    TResult Function(LoadedDetails value)? loaded,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedDetails implements MovieDetailsState {
  const factory LoadedDetails(final MovieDetailsBO movieDetails) =
      _$LoadedDetailsImpl;

  MovieDetailsBO get movieDetails;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedDetailsImplCopyWith<_$LoadedDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailsImplCopyWith<$Res> {
  factory _$$ErrorDetailsImplCopyWith(
          _$ErrorDetailsImpl value, $Res Function(_$ErrorDetailsImpl) then) =
      __$$ErrorDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorDetailsImplCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$ErrorDetailsImpl>
    implements _$$ErrorDetailsImplCopyWith<$Res> {
  __$$ErrorDetailsImplCopyWithImpl(
      _$ErrorDetailsImpl _value, $Res Function(_$ErrorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorDetailsImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsImpl implements ErrorDetails {
  const _$ErrorDetailsImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      __$$ErrorDetailsImplCopyWithImpl<_$ErrorDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MovieDetailsBO movieDetails) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MovieDetailsBO movieDetails)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MovieDetailsBO movieDetails)? loaded,
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
    required TResult Function(InitialDetails value) initial,
    required TResult Function(LoadingDetails value) loading,
    required TResult Function(LoadedDetails value) loaded,
    required TResult Function(ErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetails value)? initial,
    TResult? Function(LoadingDetails value)? loading,
    TResult? Function(LoadedDetails value)? loaded,
    TResult? Function(ErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetails value)? initial,
    TResult Function(LoadingDetails value)? loading,
    TResult Function(LoadedDetails value)? loaded,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails implements MovieDetailsState {
  const factory ErrorDetails(final String message) = _$ErrorDetailsImpl;

  String get message;

  /// Create a copy of MovieDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailsImplCopyWith<_$ErrorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
