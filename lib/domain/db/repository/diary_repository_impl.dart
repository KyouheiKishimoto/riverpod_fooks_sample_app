import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/load_status.dart';
import 'package:riverpod_fooks_sample_app/data/load_status_provider.dart';
import 'package:riverpod_fooks_sample_app/domain/db/dao/diary_dao.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/repository/diary_repository.dart';

final diaryRepository = Provider((ref) {
  final dao = ref.read(diaryDaoProvider);
  return DiaryRepositoryImpl(ref, dao);
});

/// 日記に関するリポジトリ
class DiaryRepositoryImpl extends DiaryRepository {
  // Dao
  late final DiaryDao dao;

  Ref ref;

  DiaryRepositoryImpl(this.ref, this.dao) : super();

  /// 日記のデータを全て取得
  @override
  Future<List<DiaryData>> getDiaryData(int limit, int offset) async {
    ref.read(loadStatusProvider.notifier).state = LoadStatus.loading;
    var diaryData = await dao.getAllDiaryData(limit, offset: offset);
    ref.read(loadStatusProvider.notifier).state = LoadStatus.done;
    return diaryData.isNotEmpty ? diaryData : [];
  }

  /// 日記をインサート
  @override
  insertDiaryData(DiaryData diaryData) async {
    ref.read(loadStatusProvider.notifier).state = LoadStatus.loading;
    await dao.insertDiaryData(DiaryData(
        title: diaryData.title,
        body: diaryData.body,
        createdAt: diaryData.createdAt));
    ref.read(loadStatusProvider.notifier).state = LoadStatus.done;
  }
}
