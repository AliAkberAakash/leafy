import 'package:flutter/material.dart';

class AppBarMenuModel {
  String title;
  VoidCallback onClick;
  IconData? iconData;

  AppBarMenuModel({
    required this.title,
    required this.onClick,
    this.iconData,
  });
}
