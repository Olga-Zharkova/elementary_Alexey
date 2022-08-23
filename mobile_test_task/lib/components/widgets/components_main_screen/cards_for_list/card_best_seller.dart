
import 'package:flutter/material.dart';

class CardBestSeller extends StatelessWidget {
  final int index;
  const CardBestSeller({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.green,child: Text('$index'),);
  }
}
