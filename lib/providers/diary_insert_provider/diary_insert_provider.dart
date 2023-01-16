
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/diary_insert_viewmodel.dart';

/// DiaryInsertProvider
final diaryInsertProvider = StateProvider((ref) {
  return DiaryInsertViewModel(ref);
});

/// 日記のタイトル・本文のProvider
final diaryTitleProvider = StateProvider<String>((ref) => "");
final diaryBodyProvider = StateProvider<String>((ref) => "");