import 'package:flutter/material.dart';

class AppBarMenuModel {
  String title;
  VoidCallback onClick;
  IconData? iconData;

  AppBarMenuModel(
    this.title,
    this.onClick, {
    this.iconData,
  });
}
