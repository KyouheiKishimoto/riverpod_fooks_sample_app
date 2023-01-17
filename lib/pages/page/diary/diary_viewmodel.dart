import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/domain/db/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_model.dart';
import 'package:riverpod_fooks_sample_app/domain/db/repository/diary_repository.dart';

/// DiaryViewModelProvider
final diaryStateProvider =
    StateNotifierProvider<DiaryViewModel, DiaryModel>((ref) {
  return DiaryViewModel(ref);
});

/// 日記単体Provider
final diaryDataProvider = StateProvider<DiaryData>(
    (ref) => DiaryData(title: '', body: '', createdAt: DateTime.now()));

/// DiaryViewModel
class DiaryViewModel extends StateNotifier<DiaryModel> {
  late final Ref ref;

  late final DiaryRepository _repository = ref.watch(diaryRepository);

  DiaryViewModel(this.ref) : super(DiaryModel());

  /// 日記のデータを全て取得
  getDiaryData(int limit, int offset) async {
    state = state.copyWith(
      diaryList: await _repository.getDiaryData(limit, offset),
    );
  }
}
