import 'package:drift/drift.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/models/db/table/diary_table.dart';

part 'diary_dao.g.dart';

final diaryDaoProvider = Provider((ref) {
  final db = ref.watch(diaryDBProvider);
  return DiaryDao(db);
});

/// フリーワードテーブルの操作
@DriftAccessor(tables: [Diary])
class DiaryDao extends DatabaseAccessor<DiaryLocalDatabase>
    with _$DiaryDaoMixin {
  DiaryDao(DiaryLocalDatabase db) : super(db);

  /// インサート処理
  Future insertDiaryData(DiaryData insertData) async {
    await batch(
      (batch) {
        batch.insert(diary, insertData);
      },
    );
  }

  /// 全データ取得
  Future<List<DiaryData>> getAllDiaryData(int limit, {required int offset}){
    return (select(diary)..limit(limit,offset: offset)).get();
  }

  /// インサートしたあと全てのデータを取得しなおして返す
  // Future<List<DiaryData>?>? insertAndReadDiaryDataFromDB(
  //         DiaryData diaryTableData) =>
  //     transaction(() async {
  //       await insertDiaryData(diaryTableData);
  //       return await getAllDiaryData;
  //     });
}
