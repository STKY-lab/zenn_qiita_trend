// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zenn_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZennModel _$ZennModelFromJson(Map<String, dynamic> json) {
  return _ZennModel.fromJson(json);
}

/// @nodoc
mixin _$ZennModel {
  String get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get likedCount => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get sourceRepoUpdatedAt => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  Map<String, dynamic> get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZennModelCopyWith<ZennModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZennModelCopyWith<$Res> {
  factory $ZennModelCopyWith(ZennModel value, $Res Function(ZennModel) then) =
      _$ZennModelCopyWithImpl<$Res, ZennModel>;
  @useResult
  $Res call(
      {String title,
      int commentCount,
      int likedCount,
      String emoji,
      String sourceRepoUpdatedAt,
      String path,
      Map<String, dynamic> user});
}

/// @nodoc
class _$ZennModelCopyWithImpl<$Res, $Val extends ZennModel>
    implements $ZennModelCopyWith<$Res> {
  _$ZennModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? commentCount = null,
    Object? likedCount = null,
    Object? emoji = null,
    Object? sourceRepoUpdatedAt = null,
    Object? path = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likedCount: null == likedCount
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      sourceRepoUpdatedAt: null == sourceRepoUpdatedAt
          ? _value.sourceRepoUpdatedAt
          : sourceRepoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZennModelCopyWith<$Res> implements $ZennModelCopyWith<$Res> {
  factory _$$_ZennModelCopyWith(
          _$_ZennModel value, $Res Function(_$_ZennModel) then) =
      __$$_ZennModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      int commentCount,
      int likedCount,
      String emoji,
      String sourceRepoUpdatedAt,
      String path,
      Map<String, dynamic> user});
}

/// @nodoc
class __$$_ZennModelCopyWithImpl<$Res>
    extends _$ZennModelCopyWithImpl<$Res, _$_ZennModel>
    implements _$$_ZennModelCopyWith<$Res> {
  __$$_ZennModelCopyWithImpl(
      _$_ZennModel _value, $Res Function(_$_ZennModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? commentCount = null,
    Object? likedCount = null,
    Object? emoji = null,
    Object? sourceRepoUpdatedAt = null,
    Object? path = null,
    Object? user = null,
  }) {
    return _then(_$_ZennModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likedCount: null == likedCount
          ? _value.likedCount
          : likedCount // ignore: cast_nullable_to_non_nullable
              as int,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      sourceRepoUpdatedAt: null == sourceRepoUpdatedAt
          ? _value.sourceRepoUpdatedAt
          : sourceRepoUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZennModel with DiagnosticableTreeMixin implements _ZennModel {
  _$_ZennModel(
      {required this.title,
      required this.commentCount,
      required this.likedCount,
      required this.emoji,
      required this.sourceRepoUpdatedAt,
      required this.path,
      required final Map<String, dynamic> user})
      : _user = user;

  factory _$_ZennModel.fromJson(Map<String, dynamic> json) =>
      _$$_ZennModelFromJson(json);

  @override
  final String title;
  @override
  final int commentCount;
  @override
  final int likedCount;
  @override
  final String emoji;
  @override
  final String sourceRepoUpdatedAt;
  @override
  final String path;
  final Map<String, dynamic> _user;
  @override
  Map<String, dynamic> get user {
    if (_user is EqualUnmodifiableMapView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_user);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZennModel(title: $title, commentCount: $commentCount, likedCount: $likedCount, emoji: $emoji, sourceRepoUpdatedAt: $sourceRepoUpdatedAt, path: $path, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZennModel'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('commentCount', commentCount))
      ..add(DiagnosticsProperty('likedCount', likedCount))
      ..add(DiagnosticsProperty('emoji', emoji))
      ..add(DiagnosticsProperty('sourceRepoUpdatedAt', sourceRepoUpdatedAt))
      ..add(DiagnosticsProperty('path', path))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZennModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.likedCount, likedCount) ||
                other.likedCount == likedCount) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.sourceRepoUpdatedAt, sourceRepoUpdatedAt) ||
                other.sourceRepoUpdatedAt == sourceRepoUpdatedAt) &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      commentCount,
      likedCount,
      emoji,
      sourceRepoUpdatedAt,
      path,
      const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZennModelCopyWith<_$_ZennModel> get copyWith =>
      __$$_ZennModelCopyWithImpl<_$_ZennModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZennModelToJson(
      this,
    );
  }
}

abstract class _ZennModel implements ZennModel {
  factory _ZennModel(
      {required final String title,
      required final int commentCount,
      required final int likedCount,
      required final String emoji,
      required final String sourceRepoUpdatedAt,
      required final String path,
      required final Map<String, dynamic> user}) = _$_ZennModel;

  factory _ZennModel.fromJson(Map<String, dynamic> json) =
      _$_ZennModel.fromJson;

  @override
  String get title;
  @override
  int get commentCount;
  @override
  int get likedCount;
  @override
  String get emoji;
  @override
  String get sourceRepoUpdatedAt;
  @override
  String get path;
  @override
  Map<String, dynamic> get user;
  @override
  @JsonKey(ignore: true)
  _$$_ZennModelCopyWith<_$_ZennModel> get copyWith =>
      throw _privateConstructorUsedError;
}
