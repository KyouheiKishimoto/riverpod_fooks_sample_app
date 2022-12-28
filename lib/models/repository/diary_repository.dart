import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/common/load_status.dart';
import 'package:riverpod_fooks_sample_app/models/db/dao/diary_dao.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/providers/load_status_provider.dart';

// final newsRepositoryProvider = ChangeNotifierProvider((ref) => DiaryRepository());

final diaryRepository = StateNotifierProvider((ref) {
  final dao = ref.read(diaryDaoProvider);
  return DiaryRepository(ref, dao);
});

/// 日記に関するリポジトリ
class DiaryRepository extends StateNotifier {
  // Dao
  late final DiaryDao dao;

  Ref ref;

  DiaryRepository(this.ref, this.dao) : super(null);

  /// 日記のデータを全て取得
  Future<List<DiaryData>> getDiaryData(int limit, int offset) async {
    ref.read(loadStatusProvider.notifier).state = LoadStatus.loading;
    var diaryData = await dao.getAllDiaryData(limit, offset: offset);
    ref.read(loadStatusProvider.notifier).state = LoadStatus.done;
    return diaryData.isNotEmpty ? diaryData : [];
  }

  /// 日記をインサート
  insertDiaryData(DiaryData diaryData) async {
    ref.read(loadStatusProvider.notifier).state = LoadStatus.loading;
    await dao.insertDiaryData(DiaryData(
        title: diaryData.title,
        body: diaryData.body,
        createdAt: diaryData.createdAt));
    ref.read(loadStatusProvider.notifier).state = LoadStatus.done;
  }
}
