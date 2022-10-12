import 'package:shared_preferences/shared_preferences.dart';

//Status :
// 0 - No status
// 1 - Alumni
// 2 - Student

Future<int> getStatus() async {
  final prefs = await SharedPreferences.getInstance();
  int status = prefs.getInt("status") ?? 0;
  return status;
}

Future<void> setStatus(int stat) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt("status", stat);
}

// ThemeStatus :
// 0 - Dark Theme
// 1 - Light Theme

Future<int> getThemeStatus() async {
  final prefs = await SharedPreferences.getInstance();
  int theme = prefs.getInt("theme") ?? 0;
  return theme;
}

Future<void> setThemeStatus(int theme) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setInt("theme", theme);
}
