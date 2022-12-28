import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/resource/main_resource.dart';
import 'package:riverpod_fooks_sample_app/route/main_route.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_text_theme.dart';
import 'package:riverpod_fooks_sample_app/view/theme/app_theme.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(appThemeProvider);

    return AutoTabsScaffold(
      // 各ルートを設定
      routes: const [
        DiaryPageRoute(), // 日記一覧
        CalenderPageRoute(), // カレンダー
        SettingPageRoute(), // 設定
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          selectedLabelStyle: theme.textTheme.h20.bold(),
          unselectedLabelStyle: theme.textTheme.h20.bold(),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: MainResource.bottomBarDiaryListText,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: MainResource.bottomBarCalenderText,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: MainResource.bottomBarSettingText,
            ),
          ],
        );
      },
    );
  }
}
