import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/app.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: App())));
}
