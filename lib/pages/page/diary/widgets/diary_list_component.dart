import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/common/resource/diary_resource.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_text_theme.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/diary_viewmodel.dart';
import 'package:riverpod_fooks_sample_app/route/main_route.dart';
import 'package:riverpod_fooks_sample_app/route/use_router.dart';

class DiaryListComponent extends HookConsumerWidget {
  /// 日記一覧コンポーネント
  const DiaryListComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final list = ref.watch(diaryStateProvider);

    final router = useRouter();

    return ListView.builder(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: list.diaryList!.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: theme.appColors.diaryListBackground,
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            onTap: () {
              ref.read(diaryDataProvider.notifier).state =
                  list.diaryList![index];
              router.push(const DiaryDetailScreenRoute());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 8),
                  Text(
                    list.diaryList![index].title,
                    style: theme.textTheme.h50.bold(),
                    maxLines: 1,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    list.diaryList![index].body,
                    style: theme.textTheme.h30,
                    maxLines: 2,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    DiaryResouce.monthAndDayText
                        .format(list.diaryList![index].createdAt),
                    style: theme.textTheme.h30,
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
