import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';

abstract class DiaryRepository {
  Future<List<DiaryData>> getDiaryData(int limit, int offset);

  Future<void> insertDiaryData(DiaryData diaryData);
}
