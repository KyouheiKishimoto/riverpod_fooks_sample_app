import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/common/load_status.dart';
import 'package:riverpod_fooks_sample_app/data/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/models/model/diary_model.dart';
import 'package:riverpod_fooks_sample_app/providers/diary_insert_provider/diary_insert_provider.dart';
import 'package:riverpod_fooks_sample_app/providers/load_status_provider.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_text_theme.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/diary_insert_viewmodel.dart';

import 'component/diary_insert_component.dart';
import 'component/diary_insert_title_component.dart';

class DiaryInsertScreen extends HookConsumerWidget {
  const DiaryInsertScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DiaryResouce.diaryAddTitle,
          style: theme.textTheme.appTitle.bold(),
        ),
      ),
      body: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 8),
          child: _diaryListData(ref),
        ),
      ),
    );
  }

  /// ロード状況・日記データの有無によって表示する画面を変更する処理
  ///
  /// [DiaryModel] 日記関係のモデルクラス
  Widget _diaryListData(WidgetRef ref) {
    final loadStatus = ref.watch(loadStatusProvider);

    if (loadStatus != LoadStatus.done) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: const [
                      DiaryInsertTitleComponent(),
                      SizedBox(height: 8),
                      DiaryInsertComponent(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity, //横幅
            height: 50, //高さ
            child: _elevatedButton(ref),
          ),
        ],
      );
    }
  }

  ElevatedButton _elevatedButton(WidgetRef ref) {
    final viewmodel = ref.watch(diaryInsertProvider.notifier);
    final theme = ref.watch(appThemeProvider);

    if (ref.watch(diaryTitleProvider).isNotEmpty &&
        ref.watch(diaryBodyProvider).isNotEmpty) {
      return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(theme.appColors.accent),
        ),
        onPressed: () {
          viewmodel.state.insertDiaryData();
        },
        child: const Text(DiaryResouce.diaryAddButtonText),
      );
    } else {
      return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(theme.appColors.emptyColor),
        ),
        onPressed: () {},
        child: const Text(DiaryResouce.diaryAddButtonText),
      );
    }
  }
}
