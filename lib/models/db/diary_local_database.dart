import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:drift/native.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_fooks_sample_app/models/db/dao/diary_dao.dart';
import 'package:riverpod_fooks_sample_app/models/db/table/diary_table.dart';

part 'diary_local_database.g.dart';

/// LocalDBの基本データを設定
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'diary_local_database.db'));
    return NativeDatabase(file);
  });
}

/// LocalDBを構築
@DriftDatabase(tables: [Diary], daos: [DiaryDao])
class DiaryLocalDatabase extends _$DiaryLocalDatabase {
  DiaryLocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}