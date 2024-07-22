import 'package:example/core/model/component_data.dart';
import 'package:example/core/widget/component_tile.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  final List<ComponentData> data;

  const ListScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (ctx, idx) {
          return ComponentTile(
            title: data[idx].title,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => data[idx].screen,
                ),
              );
            },
          );
        });
  }
}
