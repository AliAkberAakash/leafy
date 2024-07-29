import 'package:flutter/material.dart';

class LeafyAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const LeafyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
