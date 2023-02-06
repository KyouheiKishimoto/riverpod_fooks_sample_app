import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_local_database.dart';
import 'package:riverpod_fooks_sample_app/domain/db/models/model/diary_model.dart';
import 'package:riverpod_fooks_sample_app/domain/db/repository/diary_repository_impl.dart';

/// DiaryViewModel
class DiaryViewController extends StateNotifier<DiaryModel> {
  late final Ref ref;

  late final DiaryRepositoryImpl _repository = ref.watch(diaryRepository);

  DiaryViewController(this.ref) : super(DiaryModel());

  /// 日記のデータを全て取得
  getDiaryData(int limit, int offset) async {
    state = state.copyWith(
      diaryList: await _repository.getDiaryData(limit, offset),
    );
  }
}
