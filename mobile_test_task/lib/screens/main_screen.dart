import 'package:flutter/material.dart';

import 'package:mobile_test_task/components/widgets/components_main_screen/cards_for_list/card_select_category.dart';
import 'package:mobile_test_task/components/widgets/components_main_screen/best_seller.dart';
import 'package:mobile_test_task/components/widgets/components_main_screen/product_grouping_panel.dart';
import 'package:mobile_test_task/components/widgets/components_main_screen/product_search.dart';
import 'package:mobile_test_task/components/widgets/components_main_screen/my_button_navigator_bar.dart';
import 'package:mobile_test_task/models/category.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _indicator = 0;
  String _category = 'Phones';

  final List<Category> _buttonsCategory = [
    Category(
        name: 'phones',
        nameButton: 'Phones',
        iconName: Icons.phone_android,
        condition: true),
    Category(
        name: 'computer',
        nameButton: 'Computer',
        iconName: Icons.devices,
        condition: false),
    Category(
        name: 'health',
        nameButton: 'Health',
        iconName: Icons.heart_broken,
        condition: false),
    Category(
        name: 'books',
        nameButton: 'Books',
        iconName: Icons.menu_book_sharp,
        condition: false),
    Category(
        name: 'products',
        nameButton: 'Products',
        iconName: Icons.breakfast_dining,
        condition: false),
  ];

  //ф-ция смены состояние кнопки
  void buttonStatus(int index, List buttonsCategory) {
    for (var element in _buttonsCategory) {
      setState(() => element.condition = false);
    }
    setState(() {
      _indicator = index;
      _buttonsCategory[index].condition = true;
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void searchByBarcode() {}

  void searchByName() {}

  void selectAllAction() {}

  void selectSingleAction() {}

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('место положение'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            //искать по категориям или выбрать все
            ProductGroupingPanel(
              selectAllAction: selectAllAction,
              selectSingleAction: selectSingleAction,
              allTitle: 'view all',
              singleTitle: 'Select Category',
            ),
            //линия выбора категории
            SliverToBoxAdapter(
              child: Container(
                height: 120,
                padding: const EdgeInsets.only(top:15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _buttonsCategory.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ButtonCategory(
                      dataButton: _buttonsCategory[index],
                      buttonStatus: () => buttonStatus(index, _buttonsCategory),
                    );
                  },
                ),
              ),
            ),
            //поиск по названию или коду
            ProductSearch(
              category: _category,
              searchByBarcode: searchByBarcode,
              searchByName: searchByName,
            ),
            //просмотр актуальных товаров
            ProductGroupingPanel(
              selectAllAction: selectAllAction,
              selectSingleAction: selectSingleAction,
              allTitle: 'see more',
              singleTitle: 'Hot sales',
            ),
            //
            // актульные товары
            //
            //лучшие товары
            ProductGroupingPanel(
              selectAllAction: selectAllAction,
              selectSingleAction: selectSingleAction,
              allTitle: 'see more',
              singleTitle: 'Best Seller',
            ),
            //вывод товаров по выбранным параметрам
            CardSelectCategory(),
            // _indicator == 0
            //     ? Container(
            //         color: Colors.blue,
            //         height: 46,
            //       )
            //     : _indicator == 1
            //         ? Container(
            //             color: Colors.black,
            //             height: 56,
            //           )
            //         : Container(
            //             color: Colors.green,
            //             height: 56,
            //           ),
          ],
        ),
      ),
      //доступ к корзине
      bottomNavigationBar: MyButtonNavigatorBar(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
