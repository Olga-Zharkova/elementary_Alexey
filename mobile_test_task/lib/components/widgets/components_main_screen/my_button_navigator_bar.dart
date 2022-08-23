import 'package:flutter/material.dart';

class MyButtonNavigatorBar extends StatelessWidget {
  final Function(int) onItemTapped;
  final int selectedIndex;

  const MyButtonNavigatorBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xffffffff);
    double rounding = 25;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: rounding, vertical: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.all(Radius.circular(rounding))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.circle,
            color: color,
            size: 10,
          ),
          Text(
            'Explorer',
            style: TextStyle(color: color),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: color,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: color,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
