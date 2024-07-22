import 'package:example/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leafy',
      theme: theme.light(),
      darkTheme: theme.dark(),
      home: const HomeScreen(),
    );
  }
}
