import 'package:flutter_naver_login/flutter_naver_login.dart';

class NaverLogin {
  Future<bool> login() async {
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      await FlutterNaverLogin.logOut();
      return true;
    } catch (e) {
      return false;
    }
  }
}
