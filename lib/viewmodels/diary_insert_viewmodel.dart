import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/models/repository/diary_repository.dart';
import 'package:riverpod_fooks_sample_app/providers/diary_insert_provider/diary_insert_provider.dart';
import 'package:riverpod_fooks_sample_app/route/use_router.dart';
import 'package:riverpod_fooks_sample_app/shard_preference/test_shard_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// DiaryInsert
class DiaryInsertViewModel {
  late final Ref ref;

  DiaryInsertViewModel(this.ref);

  late final DiaryRepository _repository = ref.watch(diaryRepository);

  // late final SharedPreferences _sharedPreferences = ref.watch(sharedPreferenceProvider);

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
