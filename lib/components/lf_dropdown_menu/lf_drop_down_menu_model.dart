import 'package:flutter/material.dart';

class LfDropDownMenuModel {
  String title;
  VoidCallback onClick;
  IconData? iconData;

  LfDropDownMenuModel({
    required this.title,
    required this.onClick,
    this.iconData,
  });
}
