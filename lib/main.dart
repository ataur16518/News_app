import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'Splash-Screen/splash_screen.dart';
const KlargeTextStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
);
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        fontFamily: 'Sen',
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}