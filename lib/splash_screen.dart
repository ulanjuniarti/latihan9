import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
          () {
        FocusScope.of(context).unfocus(); // Menutup keyboard sebelum navigasi
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Menutup keyboard saat area di luar ditekan
      },
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/logo.png', width: 1000, height: 1000),
        ),
      ),
    );
  }
}
