import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_fooks_sample_app/data/common/load_status.dart';

final loadStatusProvider = StateProvider<LoadStatus>((ref) => LoadStatus.done);
