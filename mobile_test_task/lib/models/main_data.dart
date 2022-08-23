import 'package:mobile_test_task/models/product_actual.dart';
import 'package:mobile_test_task/models/product_briefly.dart';
import 'package:json_annotation/json_annotation.dart';


part 'main_data.g.dart';

@JsonSerializable()
//for main screen data
class MainData {
  @JsonKey(name: 'home_store')
  List<ProductActual> productActual;
  @JsonKey(name: 'best_seller')
  List<ProductBriefly> productBriefly;

  MainData({required this.productActual, required this.productBriefly});

  factory MainData.fromJson(Map<String,List<dynamic>> json) => _$MainDataFromJson(json);
  Map<String,dynamic> toJson() => _$MainDataToJson(this);
}
