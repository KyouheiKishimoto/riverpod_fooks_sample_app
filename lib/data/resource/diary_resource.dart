import 'package:intl/intl.dart';

/// 日記画面のリソース管理
class DiaryResouce {
  static const String appBarTitle = "日記";
  static const String noneDiaryHintText = "初めての日記を登録してみよう！";
  static DateFormat monthAndDayText = DateFormat("yyyy/MM/dd");

  // 日記の追加・編集画面
  static const String diaryAddTitle = "日記を登録";
  static const String diaryAddButtonText = "日記を登録";
  static const String diaryTitleHintText = "タイトル";
  static const String diaryBodyHintText = "今日は何があった？";
}
