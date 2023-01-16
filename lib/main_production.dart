import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/shard_preference/test_shard_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';
import 'flavors.dart';

void main() async {
  F.appFlavor = Flavor.PRODUCTION;
  // late final SharedPreferences sharedPreferences;

  // await Future.wait({
  //   Future(() async {
  //     sharedPreferences = await SharedPreferences.getInstance();
  //   }),
  // });
  runApp(
    ProviderScope(
      // overrides: [
      //   sharedPreferenceProvider.overrideWithValue(sharedPreferences),
      // ],
      child: MaterialApp(home: App()),
    ),
  );
}
