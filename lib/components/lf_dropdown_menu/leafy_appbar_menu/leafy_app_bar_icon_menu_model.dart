import 'package:flutter/material.dart';

class LeafyAppBarIconMenuModel {
  String title;
  VoidCallback onClick;
  IconData? iconData;

  LeafyAppBarIconMenuModel({
    required this.title,
    required this.onClick,
    this.iconData,
  });
}
