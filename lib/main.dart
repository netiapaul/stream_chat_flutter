import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:animated_splash/animated_splash.dart';

void main() {
  runApp(MyApp());
}

Map<int, Widget> op = {1: MyHomePage()};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplash(
        imagePath: 'images/splash.png',
        home: MyHomePage(),
        duration: 4500,
        type: AnimatedSplashType.StaticDuration,
        outputAndHome: op,
      ),
      debugShowCheckedModeBanner: false,
    );
    
  }
}
