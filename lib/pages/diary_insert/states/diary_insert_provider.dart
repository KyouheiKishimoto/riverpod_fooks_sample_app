
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/pages/diary_insert/diary_insert_controller.dart';

/// DiaryInsertProvider
final diaryInsertProvider = StateProvider((ref) {
  return DiaryInsertController(ref);
});

/// 日記のタイトル・本文のProvider
final diaryTitleProvider = StateProvider<String>((ref) => "");
final diaryBodyProvider = StateProvider<String>((ref) => "");