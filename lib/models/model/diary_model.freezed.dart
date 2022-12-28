// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiaryModel _$DiaryModelFromJson(Map<String, dynamic> json) {
  return _DearyModel.fromJson(json);
}

/// @nodoc
mixin _$DiaryModel {
  List<DiaryData>? get diaryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryModelCopyWith<DiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryModelCopyWith<$Res> {
  factory $DiaryModelCopyWith(
          DiaryModel value, $Res Function(DiaryModel) then) =
      _$DiaryModelCopyWithImpl<$Res, DiaryModel>;
  @useResult
  $Res call({List<DiaryData>? diaryList});
}

/// @nodoc
class _$DiaryModelCopyWithImpl<$Res, $Val extends DiaryModel>
    implements $DiaryModelCopyWith<$Res> {
  _$DiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryList = freezed,
  }) {
    return _then(_value.copyWith(
      diaryList: freezed == diaryList
          ? _value.diaryList
          : diaryList // ignore: cast_nullable_to_non_nullable
              as List<DiaryData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DearyModelCopyWith<$Res>
    implements $DiaryModelCopyWith<$Res> {
  factory _$$_DearyModelCopyWith(
          _$_DearyModel value, $Res Function(_$_DearyModel) then) =
      __$$_DearyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DiaryData>? diaryList});
}

/// @nodoc
class __$$_DearyModelCopyWithImpl<$Res>
    extends _$DiaryModelCopyWithImpl<$Res, _$_DearyModel>
    implements _$$_DearyModelCopyWith<$Res> {
  __$$_DearyModelCopyWithImpl(
      _$_DearyModel _value, $Res Function(_$_DearyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryList = freezed,
  }) {
    return _then(_$_DearyModel(
      diaryList: freezed == diaryList
          ? _value._diaryList
          : diaryList // ignore: cast_nullable_to_non_nullable
              as List<DiaryData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DearyModel implements _DearyModel {
  _$_DearyModel({final List<DiaryData>? diaryList}) : _diaryList = diaryList;

  factory _$_DearyModel.fromJson(Map<String, dynamic> json) =>
      _$$_DearyModelFromJson(json);

  final List<DiaryData>? _diaryList;
  @override
  List<DiaryData>? get diaryList {
    final value = _diaryList;
    if (value == null) return null;
    if (_diaryList is EqualUnmodifiableListView) return _diaryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DiaryModel(diaryList: $diaryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DearyModel &&
            const DeepCollectionEquality()
                .equals(other._diaryList, _diaryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_diaryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DearyModelCopyWith<_$_DearyModel> get copyWith =>
      __$$_DearyModelCopyWithImpl<_$_DearyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DearyModelToJson(
      this,
    );
  }
}

abstract class _DearyModel implements DiaryModel {
  factory _DearyModel({final List<DiaryData>? diaryList}) = _$_DearyModel;

  factory _DearyModel.fromJson(Map<String, dynamic> json) =
      _$_DearyModel.fromJson;

  @override
  List<DiaryData>? get diaryList;
  @override
  @JsonKey(ignore: true)
  _$$_DearyModelCopyWith<_$_DearyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
