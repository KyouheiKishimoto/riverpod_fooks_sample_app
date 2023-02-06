import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'app.dart';
import 'flavors.dart';

void main() {
  F.appFlavor = Flavor.DEVELOP;
  runApp(const ProviderScope(child: MaterialApp(home: App())));
}
