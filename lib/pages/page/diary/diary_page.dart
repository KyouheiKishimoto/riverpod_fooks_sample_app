import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_text_theme.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/domain/common/load_status.dart';
import 'package:riverpod_fooks_sample_app/domain/common/state/load_status_provider.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/diary_viewmodel.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/widgets/diary_list_component.dart';
import 'package:riverpod_fooks_sample_app/pages/page/diary/widgets/none_diary_list_component.dart';
import 'package:riverpod_fooks_sample_app/route/main_route.dart';
import 'package:riverpod_fooks_sample_app/route/use_router.dart';
import 'package:riverpod_fooks_sample_app/flavors.dart';

class DiaryPage extends HookConsumerWidget {
  /// 日記一覧画面
  const DiaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    final router = useRouter();

    // print(ref.watch(sharedPreferenceProvider).get('title'));

    // 一度のみ実行する処理
    useEffect(() {
      // Widgetの描画が終わってから実行する
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(diaryStateProvider.notifier).getDiaryData(10, 0);
      });
      return null;
    }, const []);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
           F.title,
            style: theme.textTheme.appTitle.bold(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme.appColors.accent,
          child: const Icon(Icons.edit_rounded),
          onPressed: () {
            router.push(const DiaryInsertScreenRoute()).then(
                  (value) =>
                      ref.read(diaryStateProvider.notifier).getDiaryData(10, 0),
                );
          },
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
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
    final diaryModel = ref.watch(diaryStateProvider);
    // 通信状態が完了していない場合はインジゲーターを表示
    if (loadStatus != LoadStatus.done || diaryModel.diaryList == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      if (diaryModel.diaryList!.isNotEmpty) {
        return const DiaryListComponent();
      } else {
        return const NoneDiaryListComponent();
      }
    }
  }
}
