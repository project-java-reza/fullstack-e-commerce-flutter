import 'package:flutter/material.dart';

import '../../common/constant/images.dart';
import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
          milliseconds: 3000), // loading layar logo screen selama 3 detik
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      ),
    );

    return Scaffold(
      body: Center(
          child: Image.asset(
        Images.logo,
        width: 200,
        height: 200,
      )),
    );
  }
}
