import 'package:auto_route/auto_route.dart';
import 'package:riverpod_fooks_sample_app/view/diary_detail/diary_detail_screen.dart';
import 'package:riverpod_fooks_sample_app/view/diary_insert/diary_insert_screen.dart';
import 'package:riverpod_fooks_sample_app/view/main_screen.dart';
import 'package:riverpod_fooks_sample_app/view/page/calender/calender_page.dart';
import 'package:riverpod_fooks_sample_app/view/page/diary/diary_page.dart';
import 'package:riverpod_fooks_sample_app/view/page/setting/setting_page.dart';

// exportしないと動かない
export 'main_route.gr.dart';

/// 画面遷移に関する管理処理
@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MainScreen,
      children: [
        AutoRoute(path: 'diary', page: DiaryPage, initial: true),
        AutoRoute(path: 'calender', page: CalenderPage),
        AutoRoute(path: 'setting', page: SettingPage),
      ],
    ),
    AutoRoute(page: DiaryDetailScreen),
    AutoRoute(page: DiaryInsertScreen),
  ],
)
class $MainRouter {}
