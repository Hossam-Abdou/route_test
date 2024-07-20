import 'package:flutter/material.dart';
import 'package:route_test/home/second_screen/second_home.dart';
import 'package:route_test/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SecondHome(),
    );
  }
}
