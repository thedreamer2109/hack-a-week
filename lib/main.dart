import 'package:flutter/material.dart';
import 'package:ambicare_app/screens/account_screen.dart';
import 'package:ambicare_app/screens/helpline_screen.dart';
import 'package:ambicare_app/screens/home_screen.dart';
import 'package:ambicare_app/screens/intro.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/intro',
      routes: {
        '/homescreen': (context) => HomeScreen(),
        '/contact': (context) => HelplineScreen(),
        '/account': (context) => AccoutScreen(),
        '/intro': (context) => Introduction(),
      },
    ),
  );
}
