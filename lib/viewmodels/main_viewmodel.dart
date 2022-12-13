import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// メインのViewModelProvider
final mainStateProvider = ChangeNotifierProvider((ref) => MainViewModel());

/// メインのViewModel
class MainViewModel extends ChangeNotifier {
  int currentIndex = 0;

  /// 選択されたページをセット
  void setSelectPage(int index){
    currentIndex = index;
    notifyListeners();
  }
}
