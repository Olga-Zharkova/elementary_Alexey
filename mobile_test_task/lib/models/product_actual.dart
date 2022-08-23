import 'package:json_annotation/json_annotation.dart';

part 'product_actual.g.dart';

// "home_store"
@JsonSerializable()
class ProductActual {
  int id;
  @JsonKey(name: 'is_new', defaultValue: false)
  bool isNew;
  String title;
  String subtitle;
  String picture;
  @JsonKey(name: 'is_buy')
  bool isBuy;

  ProductActual({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isBuy,
    required this.isNew,
  });

  factory ProductActual.fromJson(Map<String,dynamic> json) => _$ProductActualFromJson(json);
  Map<String,dynamic> toJson() => _$ProductActualToJson(this);
}
