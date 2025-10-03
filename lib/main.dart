import 'package:appmail/Drawer-class.dart';
import 'package:appmail/Setting-screen.dart';
import 'package:appmail/expanded-.dart';
import 'package:appmail/fb-icon.dart';
import 'package:appmail/onboarding.dart';
import 'package:appmail/ternary-1.dart';
import 'package:appmail/ternary-2.dart';
import 'package:flutter/material.dart';

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
      home: Onboarding(),
    );
  }
}
