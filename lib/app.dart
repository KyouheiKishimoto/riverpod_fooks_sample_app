import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/common/theme/app_theme.dart';
import 'package:riverpod_fooks_sample_app/route/main_route.gr.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final appRouter = useMemoized(() => MainRouter());

    return MaterialApp.router(
      theme: theme.data,
      darkTheme: theme.data,
      themeMode: ThemeMode.system,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
