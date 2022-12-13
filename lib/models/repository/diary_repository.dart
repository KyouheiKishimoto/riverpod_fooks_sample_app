import 'package:flutter/cupertino.dart';
import 'package:riverpod_fooks_sample_app/models/db/dao/diary_dao.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';

/// 日記に関するリポジトリ
class DiaryRepository extends ChangeNotifier {
  // Dao
  late final DiaryDao _dao;

  // 日記の配列データ
  List<DiaryData>? _diaryListData;

  // ViewModelで受け取るデータ
  List<DiaryData>? get diaryListData => _diaryListData;

  DiaryRepository({diaryDao}) {
    _dao = diaryDao;
  }

  /// 日記のデータを全て取得
  getDiaryData() async {
    _diaryListData = await _dao.getAllDiaryData;
    notifyListeners();
  }

  /// 日記をインサート
  void insertDiaryData(DiaryData diaryData) {
    _dao.insertDiaryData(DiaryData(
        title: diaryData.title, body: diaryData.body, createdAt: diaryData.createdAt));
  }
}
