import 'package:example/components/buttons/filled_button_screen.dart';
import 'package:example/components/buttons/outlined_button_screen.dart';
import 'package:example/core/model/component_data.dart';
import 'package:example/core/screen/list_screen.dart';
import 'package:example/core/screen/screen_widget.dart';
import 'package:example/extensions/extensions.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget with ScreenWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListScreen(
        data: [
          ComponentData(
            context.localizations.filledButton,
            FilledButtonScreen(
              title: context.localizations.filledButton,
            ),
          ),
          ComponentData(
            context.localizations.outlinedButton,
            OutlinedButtonScreen(
              title: context.localizations.filledButton,
            ),
          ),
        ],
      ),
    );
  }
}
