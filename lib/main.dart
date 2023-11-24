import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Sesuaikan dengan path file SplashScreen.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false, // Menyembunyikan tulisan "Debug"
    );
  }
}
