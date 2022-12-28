import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/models/repository/diary_repository.dart';
import 'package:riverpod_fooks_sample_app/route/use_router.dart';

/// DiaryInsertProvider
final diaryInsertProvider = StateProvider((ref) {
  return DiaryInsertViewModel(ref);
});

/// 日記のタイトル・本文のProvider
final diaryTitleProvider = StateProvider<String>((ref) => "");
final diaryBodyProvider = StateProvider<String>((ref) => "");

/// DiaryInsert
class DiaryInsertViewModel {
  late final Ref ref;

  DiaryInsertViewModel(this.ref);

  late final DiaryRepository _repository = ref.watch(diaryRepository);

  final router = useRouter();

  /// 日記をインサート
  insertDiaryData() async {
    if (isDiaryData()) {
      final diaryData = DiaryData(
          title: ref.read(diaryTitleProvider),
          body: ref.read(diaryBodyProvider),
          createdAt: DateTime.now());
      await _repository.insertDiaryData(diaryData);
      // 処理が終わったら戻る処理
      router.pop();
    }
  }

  /// タイトル・本文が空か判定処理
  bool isDiaryData() {
    if (ref.read(diaryTitleProvider).isNotEmpty &&
        ref.read(diaryBodyProvider).isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
