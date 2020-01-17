import 'package:basic_flutter/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example Flutter',
      home: new SplashScreen(),
    );
  }
}
