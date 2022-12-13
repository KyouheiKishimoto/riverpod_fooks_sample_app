import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/view/page/diary/component/diary_list_component.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/diary_viewmodel.dart';

import 'component/none_diary_list_component.dart';

class DiaryPage extends HookConsumerWidget {
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(DiaryResouce.appBarTitle),
          leading: const Icon(Icons.calendar_today),
          actions: const [
            Icon(Icons.search),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, _) {
              final diaryListData = ref.read(diaryStateProvider);
              // if(diaryListData != null) {
                // return diaryListComponent(diaryListData!);
                return Center();
              // } else {
              //   return noneDiaryListComponent();
              // }
            },
          ),
        ),
      ),
    );
  }
}
