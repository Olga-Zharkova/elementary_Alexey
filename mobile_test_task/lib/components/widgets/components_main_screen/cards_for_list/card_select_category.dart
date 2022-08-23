import 'package:flutter/material.dart';
import 'package:mobile_test_task/models/category.dart';
import 'package:mobile_test_task/models/color_button_category.dart';

class ButtonCategory extends StatelessWidget {
  final Category dataButton;
  final VoidCallback buttonStatus;

  const ButtonCategory({
    super.key,
    required this.dataButton,
    required this.buttonStatus,
  });

  @override
  Widget build(BuildContext context) {
    Color colorActive = Theme.of(context).colorScheme.primary;
    ColorButtonCategory notActive = ColorButtonCategory(
        text: Theme.of(context).colorScheme.onPrimary,
        icon: const Color(0xffb3b3c3),
        background: const Color(0xffffffff));
    ColorButtonCategory active = ColorButtonCategory(
        text: colorActive,
        icon: const Color(0xffffffff),
        background: colorActive);
    var colorButton = dataButton.condition == true ? active : notActive;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colorButton.background,
            ),
            child: IconButton(
              color: colorButton.background,
              onPressed: buttonStatus,
              icon: Icon(
                dataButton.iconName,
                color: colorButton.icon,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            dataButton.nameButton,
            style: Theme.of(context)
                .textTheme
                .headline3!
                .apply(color: colorButton.text),
          )
        ],
      ),
    );
  }
}
