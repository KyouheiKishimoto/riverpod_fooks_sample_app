import 'package:drift/drift.dart';

class Diary extends Table {
  IntColumn? get id => integer().autoIncrement().nullable()();
  TextColumn? get title => text().withDefault(const Constant('')).named("タイトル")();
  TextColumn? get body => text().withDefault(const Constant('')).named("日記の詳細")();
  DateTimeColumn? get createdAt => dateTime().named("作成日")();
}