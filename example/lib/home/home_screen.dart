import 'package:example/components/buttons/buttons_screen.dart';
import 'package:example/core/model/component_data.dart';
import 'package:example/core/screen/component_screen.dart';
import 'package:example/core/screen/list_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Screen"),
      ),
      body: ListScreen(
        data: [
          ComponentData(
            "AppBars",
            const ComponentScreen(
              title: "AppBars",
              body: Placeholder(),
            ),
          ),
          ComponentData(
            "Buttons",
            const ButtonsScreen(),
          ),
        ],
      ),
    );
  }
}
