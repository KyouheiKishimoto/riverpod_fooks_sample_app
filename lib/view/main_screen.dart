import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/resource/main_resource.dart';
import 'package:riverpod_fooks_sample_app/view/page/calender/calender_page.dart';
import 'package:riverpod_fooks_sample_app/view/page/diary/diary_page.dart';
import 'package:riverpod_fooks_sample_app/view/page/setting/setting_page.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/main_viewmodel.dart';

class MainScreen extends HookConsumerWidget {
  MainScreen({Key? key}) : super(key: key);

  final _pages = [
    const DiaryPage(),
    const CalenderPage(),
    const SettingPage()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final viewModel = ref.watch(mainStateProvider);

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: _pages[viewModel.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: viewModel.currentIndex,
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
            onTap: (index) {
              viewModel.setSelectPage(index);
            }),
      ),
    );
  }
}
