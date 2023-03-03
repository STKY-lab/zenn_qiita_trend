// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zenn_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZennModel _$$_ZennModelFromJson(Map<String, dynamic> json) => _$_ZennModel(
      title: json['title'] as String,
      commentCount: json['commentCount'] as int,
      likedCount: json['likedCount'] as int,
      emoji: json['emoji'] as String,
      sourceRepoUpdatedAt: json['sourceRepoUpdatedAt'] as String,
      path: json['path'] as String,
      user: json['user'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ZennModelToJson(_$_ZennModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'commentCount': instance.commentCount,
      'likedCount': instance.likedCount,
      'emoji': instance.emoji,
      'sourceRepoUpdatedAt': instance.sourceRepoUpdatedAt,
      'path': instance.path,
      'user': instance.user,
    };
