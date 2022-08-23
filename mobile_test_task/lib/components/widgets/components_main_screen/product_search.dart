import 'package:flutter/material.dart';

class ProductSearch extends StatelessWidget {
  final String category;
  final VoidCallback searchByBarcode;
  final VoidCallback searchByName;

  const ProductSearch({
    super.key,
    required this.category,
    required this.searchByName,
    required this.searchByBarcode,
  });

  @override
  Widget build(BuildContext context) {
    const focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      borderSide: BorderSide(color: Colors.white, width: 1.0),
    );

    const enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25.0)),
      borderSide: BorderSide(color: Colors.white, width: 0.5),
    );

    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              height: 50,
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: focusedBorder,
                  enabledBorder: enabledBorder,
                  labelText: 'Search',
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary,),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: IconButton(
                onPressed: searchByBarcode,
                icon: const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
