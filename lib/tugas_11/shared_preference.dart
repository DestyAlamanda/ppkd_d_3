import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static const String loginKey = "login";
  static const String tokenKey = "token";

<<<<<<< HEAD
  static void saveLogin() async {
=======
  static Future<void> saveLogin() async {
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(loginKey, true);
  }

<<<<<<< HEAD
  static void saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }

  static getLogin() async {
    print(loginKey);
=======
  static Future<void> saveToken(String token) async {
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(tokenKey, token);
  }

<<<<<<< HEAD
  static getToken() async {
    print(tokenKey);
    final prefs = await SharedPreferences.getInstance();
    prefs.getString(tokenKey);
    return prefs.getString(tokenKey);
  }

  static void removeLogin() async {
=======
  static Future<bool> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(loginKey) ?? false;
  }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(tokenKey) ?? "";
  }

  static Future<void> removeLogin() async {
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(loginKey);
  }

<<<<<<< HEAD
  static void removeToken() async {
=======
  static Future<void> removeToken() async {
>>>>>>> a496840cdf697e447f87dd450f1fbe9d222a3d31
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(tokenKey);
  }
}
