import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_fooks_sample_app/common/resource/diary_resource.dart';

class NoneDiaryListComponent extends HookWidget {
  /// 日記がない場合のコンポーネント
  const NoneDiaryListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(DiaryResouce.noneDiaryHintText),
    );
  }
}
