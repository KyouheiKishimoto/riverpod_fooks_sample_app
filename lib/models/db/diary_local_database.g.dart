// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_local_database.dart';

// ignore_for_file: type=lint
class DiaryData extends DataClass implements Insertable<DiaryData> {
  final int? id;
  final String title;
  final String body;
  final DateTime createdAt;
  const DiaryData(
      {this.id,
      required this.title,
      required this.body,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    map['タイトル'] = Variable<String>(title);
    map['日記の詳細'] = Variable<String>(body);
    map['作成日'] = Variable<DateTime>(createdAt);
    return map;
  }

  DiaryCompanion toCompanion(bool nullToAbsent) {
    return DiaryCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: Value(title),
      body: Value(body),
      createdAt: Value(createdAt),
    );
  }

  factory DiaryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiaryData(
      id: serializer.fromJson<int?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DiaryData copyWith(
          {Value<int?> id = const Value.absent(),
          String? title,
          String? body,
          DateTime? createdAt}) =>
      DiaryData(
        id: id.present ? id.value : this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        createdAt: createdAt ?? this.createdAt,
      );
  @override
  String toString() {
    return (StringBuffer('DiaryData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, body, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiaryData &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.createdAt == this.createdAt);
}

class DiaryCompanion extends UpdateCompanion<DiaryData> {
  final Value<int?> id;
  final Value<String> title;
  final Value<String> body;
  final Value<DateTime> createdAt;
  const DiaryCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  DiaryCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    required DateTime createdAt,
  }) : createdAt = Value(createdAt);
  static Insertable<DiaryData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'タイトル': title,
      if (body != null) '日記の詳細': body,
      if (createdAt != null) '作成日': createdAt,
    });
  }

  DiaryCompanion copyWith(
      {Value<int?>? id,
      Value<String>? title,
      Value<String>? body,
      Value<DateTime>? createdAt}) {
    return DiaryCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['タイトル'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['日記の詳細'] = Variable<String>(body.value);
    }
    if (createdAt.present) {
      map['作成日'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiaryCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $DiaryTable extends Diary with TableInfo<$DiaryTable, DiaryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiaryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'タイトル', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      '日記の詳細', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      '作成日', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, body, createdAt];
  @override
  String get aliasedName => _alias ?? 'diary';
  @override
  String get actualTableName => 'diary';
  @override
  VerificationContext validateIntegrity(Insertable<DiaryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('タイトル')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['タイトル']!, _titleMeta));
    }
    if (data.containsKey('日記の詳細')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['日記の詳細']!, _bodyMeta));
    }
    if (data.containsKey('作成日')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['作成日']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DiaryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiaryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}タイトル'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}日記の詳細'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}作成日'])!,
    );
  }

  @override
  $DiaryTable createAlias(String alias) {
    return $DiaryTable(attachedDatabase, alias);
  }
}

abstract class _$DiaryLocalDatabase extends GeneratedDatabase {
  _$DiaryLocalDatabase(QueryExecutor e) : super(e);
  late final $DiaryTable diary = $DiaryTable(this);
  late final DiaryDao diaryDao = DiaryDao(this as DiaryLocalDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [diary];
}
