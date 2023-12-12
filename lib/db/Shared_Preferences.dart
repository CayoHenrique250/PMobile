import 'package:shared_preferences/shared_preferences.dart';

class  Preferences{
  Future<SharedPreferences> get _getIntance => SharedPreferences.getInstance();

  setUser(bool status) async {
    SharedPreferences instance = await _getIntance;
    instance.setBool("USER", status);
  }

  getUser() async {
    SharedPreferences instance = await _getIntance;

    bool userStatus = instance.getBool("USER") ?? false;
    return userStatus;
  }

  
  setUserEmail(String status) async {
    SharedPreferences instance = await _getIntance;
    instance.setString("USER-EMAIL", status);
  }

  clearUserEmail(String status) async {
    SharedPreferences instance = await _getIntance;
    instance.setString("USER-EMAIL", '');
  }

  getUserEmail() async {
    SharedPreferences instance = await _getIntance;

    String userEmail = instance.getString("USER-EMAIL") ?? '';
    return userEmail;
  }
}

