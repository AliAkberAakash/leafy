import 'package:example/core/screen/screen_widget.dart';
import 'package:flutter/material.dart';

class ComponentScreen extends StatelessWidget with ScreenWidget {
  final String title;
  final Widget body;

  const ComponentScreen({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
