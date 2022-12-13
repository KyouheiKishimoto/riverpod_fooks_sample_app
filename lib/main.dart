import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/view/main_screen.dart';
import 'package:riverpod_fooks_sample_app/viewmodels/main_viewmodel.dart';

void main() {
  runApp(ProviderScope(child: MaterialApp(home: MyApp())));
}

class MyApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
