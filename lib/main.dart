import 'package:flutter/material.dart';
import 'package:project_flutter_dicoding/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presiden Indonesia',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}

