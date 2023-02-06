import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_text_theme.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/states/diary_provider.dart';

class DiaryDetailTitleComponent extends HookConsumerWidget {
  /// 日記詳細 - タイトルコンポーネント
  const DiaryDetailTitleComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final diaryData = ref.watch(diaryDataProvider);
    return Text(
      diaryData.title,
      style: theme.textTheme.h50.bold().rotunda(),
    );
  }
}
