import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/providers/diary_insert_provider/diary_insert_provider.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_theme.dart';

class DiaryInsertComponent extends HookConsumerWidget {
  const DiaryInsertComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return TextFormField(
      cursorColor: theme.appColors.accent,
      maxLines: 20,
      style: theme.textTheme.h30,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: DiaryResouce.diaryBodyHintText,
      ),
      onChanged: (value) {
        ref.read(diaryBodyProvider.notifier).state = value;
      },
    );
  }
}
