import 'package:shared_preferences/shared_preferences.dart';

enum UserPreferenceKey {
  userId,
  userName,
  email,
  age,
}

extension UserPreferenceKeyEx on UserPreferenceKey {

  /// Keyを返す処理
  String get keyString {
    switch (this) {
      case UserPreferenceKey.userId:
        return 'user_id';
      case UserPreferenceKey.userName:
        return 'user_name';
      case UserPreferenceKey.email:
        return 'user_name';
      case UserPreferenceKey.age:
        return 'user_name';
    }
  }

  Future<bool> setInt(int value) async {
    final pref = await SharedPreferences.getInstance();
    print(keyString + "セット");
    return pref.setInt(keyString, value);
  }

  Future<int?> getInt() async {
    final pref = await SharedPreferences.getInstance();
    if (pref.containsKey(keyString)) {
      return await pref.getInt(keyString);
    } else {
      return null;
    }
  }

  Future<bool> setString(String value) async {
    final pref = await SharedPreferences.getInstance();
    print(keyString + "セット");
    return pref.setString(keyString, value);
  }

  Future<String?> getString() async {
    final pref = await SharedPreferences.getInstance();
    if (pref.containsKey(keyString)) {
      return await pref.getString(keyString);
    } else {
      return null;
    }
  }
}
