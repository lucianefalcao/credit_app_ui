import 'package:app/constants.dart';
import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Credit App UI',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        // scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
