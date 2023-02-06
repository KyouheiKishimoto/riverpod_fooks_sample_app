import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/common/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/pages/diary_insert/states/diary_insert_provider.dart';

class DiaryInsertTitleComponent extends HookConsumerWidget {
  const DiaryInsertTitleComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return TextFormField(
      cursorColor: theme.appColors.accent,
      controller: null,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: theme.appColors.accent,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: theme.appColors.accent,
          ),
        ),
        labelText: DiaryResouce.diaryTitleHintText,
        labelStyle: TextStyle(color: theme.appColors.accent),
      ),
      onChanged: (value) {
        ref.read(diaryTitleProvider.notifier).state = value;
      },
    );
  }
}
