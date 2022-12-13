import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_fooks_sample_app/models/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/models/repository/diary_repository.dart';

/// メインのViewModelProvider
final diaryStateProvider = ChangeNotifierProvider((ref) => DiaryViewModel());

/// メインのViewModel
class DiaryViewModel extends ChangeNotifier {

  // 日記の配列データ
  List<DiaryData>? _diaryListData;

  // ViewModelで受け取るデータ
  List<DiaryData>? get diaryListData => _diaryListData;

  late final DiaryRepository _repository;

  DiaryViewModel({diaryRepository}) {
    _repository = diaryRepository;
  }

  /// 日記のデータを全て取得
  getDiaryData() async {
    _diaryListData = await _repository.getDiaryData();
    notifyListeners();
  }

  /// 日記をインサート
  void insertDiaryData(DiaryData diaryData){
    _repository.insertDiaryData(diaryData);
  }
}