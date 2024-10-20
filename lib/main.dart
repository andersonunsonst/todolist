import 'package:flutter/material.dart';
import 'package:listview/src/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(primarySwatch: Colors.red),
        home: HomePage());
  }
}
