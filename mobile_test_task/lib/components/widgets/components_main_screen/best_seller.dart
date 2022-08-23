import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobile_test_task/components/widgets/components_main_screen/cards_for_list/card_best_seller.dart';
import 'package:mobile_test_task/models/main_data.dart';

class CardSelectCategory extends StatefulWidget {
  const CardSelectCategory({Key? key}) : super(key: key);

  @override
  State<CardSelectCategory> createState() => _CardSelectCategoryState();
}

class _CardSelectCategoryState extends State<CardSelectCategory> {
  bool _isLoading = true;
  Dio _dio = Dio();
  List _mainData = [];
  var _errorMessage;
  var _hasError;

  getDataDio() async {
    setState(() => _isLoading = true);
    try {
      final response = await _dio
          .get('https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175');
      var data = json.decode(response.data);
      print('data $data');
      var data1 = json.decode(data);
      print('data1 $data1');
      var data2 = data1['best_seller'];
      print(data2);
      setState(
        () => _mainData = data
             .map<MainData>((element) => MainData.fromJson(element))
             .toList());
    } on DioError catch (e) {
      setState(() {
        _errorMessage = e.response!.data['id'];
        _hasError = true;
        _isLoading = false;
      });
    }
    setState(() => _isLoading = false);
  }

  @override
  void initState() {
    super.initState();
    getDataDio();
    print(_mainData);
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(),
    );

    //   SliverGrid.count(crossAxisCount: 2, children: [
    //   ..._mainData.map((element) {
    //     return CardBestSeller();
    //   })
    // ]);
  }
}
