import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/diary_viewmodel.dart';

class DiaryDetailComponent extends HookConsumerWidget {
  /// 日記詳細 - 本文コンポーネント
  const DiaryDetailComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final diaryData = ref.watch(diaryDataProvider);
    return Text(
      diaryData.body,
      style: theme.textTheme.h20,
    );
  }
}
