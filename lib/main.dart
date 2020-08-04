import 'package:flutter/material.dart';
import 'package:plantui/components/screens/home/components/home_screen.dart';
import 'package:plantui/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI - Plant',
      theme: ThemeData(
        scaffoldBackgroundColor: colorBackground,
        primaryColor: colorPrimary,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: colorText),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

