import 'package:example/core/screen/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:leafy/styles/util/extensions.dart';

class AppbarScreen extends StatelessWidget with ScreenWidget{
  const AppbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Lato Text",
            style: theme.textTheme.displayLarge,
          ),
          Text(
            "Lato Text",
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
