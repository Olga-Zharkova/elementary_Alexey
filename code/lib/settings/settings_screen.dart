import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'settings_widget_model.dart';

class SettingsScreen extends ElementaryWidget<ISettingsWidgetModel> {
  const SettingsScreen({super.key}) : super(createSettingsWidgetModel);

  @override
  Widget build(ISettingsWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(wm.title),
      ),
      body: EntityStateNotifierBuilder<String>(
        listenableEntityState: wm.info,
        builder: (_, info) {
          return Center(
            child: Text(info!),
          );
        },
        loadingBuilder: (_, __) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
