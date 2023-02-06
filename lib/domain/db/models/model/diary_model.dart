import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/table/diary_table.dart';

part 'generated/diary_model.freezed.dart';
part 'generated/diary_model.g.dart';

@freezed
class DiaryModel with _$DiaryModel {
  factory DiaryModel({
    List<DiaryData>? diaryList,
  }) = _DearyModel;

  factory DiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DiaryModelFromJson(json);
}
