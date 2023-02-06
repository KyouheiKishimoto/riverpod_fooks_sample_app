import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/repository/diary_repository.dart';
import 'package:riverpod_fooks_sample_app/domain/db/repository/diary_repository_impl.dart';
import 'package:riverpod_fooks_sample_app/pages/diary_insert/states/diary_insert_provider.dart';
import 'package:riverpod_fooks_sample_app/route/use_router.dart';

/// DiaryInsert
class DiaryInsertController {
  late final Ref ref;

  DiaryInsertController(this.ref);

  late final DiaryRepositoryImpl _repository = ref.watch(diaryRepository);

  final router = useRouter();

  /// 日記をインサート
  insertDiaryData() async {
    // _sharedPreferences.setString('title', ref.read(diaryTitleProvider),);
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
