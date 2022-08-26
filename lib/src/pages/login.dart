import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:sample_sns_login/src/login/kakao_login.dart';
import 'package:sample_sns_login/src/login/naver_login.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    User? user;
    bool isLogined = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SNS Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.amber),
              onPressed: () async {
                isLogined = await KakaoLogin().login();
                if (isLogined) {
                  print('카카오 로그인 성공');
                  setState(() {});
                } else {
                  print('카카오 로그인 실패');
                }
              },
              child: const Text('카카오톡 로그인'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.green[400]),
              onPressed: () async {
                isLogined = await NaverLogin().login();
                if (isLogined) {
                  print('네이버 로그인 성공');
                  setState(() {});
                } else {
                  print('네이버 로그인 실패');
                }
              },
              child: const Text('네이버 로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
