import 'package:flutter/material.dart';
import 'package:flutter_application_test/circularIdicator.dart';
import 'package:flutter_application_test/gradian.dart';
import 'package:flutter_application_test/api/restApi.dart';
import 'package:flutter_application_test/gridView.dart';
import 'package:flutter_application_test/slider.dart';
import 'package:flutter_application_test/homepage.dart';

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
      home: Scaffold(
        body: slider(),
      ),
    );
  }
}
