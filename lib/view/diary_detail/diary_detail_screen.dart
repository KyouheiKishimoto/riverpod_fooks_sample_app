import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/view/diary_detail/component/diary_detail_title_component.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/diary_viewmodel.dart';

import 'component/diary_detail_component.dart';

class DiaryDetailScreen extends HookConsumerWidget {
  /// 日記詳細画面
  const DiaryDetailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diaryData = ref.watch(diaryDataProvider);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(DiaryResouce.monthAndDayText.format(diaryData.createdAt)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                DiaryDetailTitleComponent(),
                SizedBox(height: 24),
                DiaryDetailComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
