import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// ルート
StackRouter useRouter() {
  final context = useContext();
  return AutoRouter.of(context);
}
