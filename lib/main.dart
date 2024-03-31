import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/router_one_screen.dart';
import 'package:navigation/screen/router_three_screen.dart';
import 'package:navigation/screen/router_two_screen.dart';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/one': (_) => RouterOneScreen(),
        '/two': (_) => RouterTwoScreen(),
        '/three': (_) => RouterThreeScreen(),
      },
     )
  );
}