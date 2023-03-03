import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'zenn_model.freezed.dart';
part 'zenn_model.g.dart';

@freezed
class ZennModel with _$ZennModel {
  factory ZennModel({
    required String title,
    required int commentCount,
    required int likedCount,
    required String emoji,
    required String sourceRepoUpdatedAt,
    required String path,
    required Map<String, dynamic> user,
  }) = _ZennModel;

  factory ZennModel.fromJson(Map<String, dynamic> json) =>
      _$ZennModelFromJson(json);
}
