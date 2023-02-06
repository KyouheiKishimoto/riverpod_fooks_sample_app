import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_model.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/diary_controller.dart';

/// DiaryViewModelProvider
final diaryStateProvider =
    StateNotifierProvider<DiaryViewController, DiaryModel>((ref) {
  return DiaryViewController(ref);
});

/// 日記単体Provider
final diaryDataProvider = StateProvider<DiaryData>(
    (ref) => DiaryData(title: '', body: '', createdAt: DateTime.now()));
