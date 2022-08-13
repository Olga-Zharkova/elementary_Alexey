import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/settings/settings_model.dart';
import 'package:untitled3/settings/settings_screen.dart';

abstract class ISettingsWidgetModel extends IWidgetModel {
  String get title;

  ListenableState<EntityState<String>> get info;
}

SettingsWidgetModel createSettingsWidgetModel(BuildContext context) {
  return SettingsWidgetModel(SettingsModel(), Navigator.of(context));
}

class SettingsWidgetModel extends WidgetModel<SettingsScreen, SettingsModel> implements ISettingsWidgetModel {
  NavigatorState navigator;

  SettingsWidgetModel(super.model, this.navigator);

  @override
  String get title => 'Настройки';

  @override
  ListenableState<EntityState<String>> get info => model.information;
}
