import 'package:flutter/material.dart';
import 'package:leafy/components/buttons/filled_button/lf_filled_button.dart';
import 'package:leafy/styles/theme/theme.dart';
import 'package:leafy/styles/util/extensions.dart';

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
      home: const MyHomePage(title: 'Leafy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LfFilledButton(
              label: "Leafy Filled Button",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            const LfFilledButton(
              label: "Leafy Filled Button Disabled",
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfFilledButton(
              leftIcon: Icons.add,
              label: "Leafy Filled Button with left Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            LfFilledButton(
              rightIcon: Icons.add,
              label: "Leafy Filled Button with right Icon",
              onPressed: () {},
            ),
            SizedBox(
              height: theme.spacingTokens.lfSpacing24,
            ),
            MaterialButton(
              elevation: theme.elevationTokens.lfSysElevationLvl2,
              color: theme.colorScheme.funkyContainer,
              textColor: theme.colorScheme.funkyOnContainer,
              child: Padding(
                padding: EdgeInsets.all(theme.spacingTokens.lfSpacing8),
                child: Text(
                  "Funky Colored Button",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
