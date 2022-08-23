import 'package:flutter/material.dart';

class Category {
  String name;
  String nameButton;
  IconData iconName;
  bool condition;


  Category({required this.name, required this.nameButton, required this.iconName, required this.condition});

  void onTap() {}
}
