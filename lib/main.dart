import 'package:flutter/material.dart';
import 'package:gas_app/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Gas App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
