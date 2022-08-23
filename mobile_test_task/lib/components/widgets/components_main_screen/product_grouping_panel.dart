import 'package:flutter/material.dart';

class ProductGroupingPanel extends StatelessWidget {
  final VoidCallback selectAllAction;
  final VoidCallback selectSingleAction;
  final String singleTitle;
  final String allTitle;

  const ProductGroupingPanel({
    super.key,
    required this.selectAllAction,
    required this.selectSingleAction,
    required this.allTitle,
    required this.singleTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: selectSingleAction,
            child: Text(
              singleTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          TextButton(
            onPressed: selectAllAction,
            child: Text(allTitle),
          ),
        ],
      ),
    );
  }
}
