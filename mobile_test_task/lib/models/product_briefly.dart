import 'package:json_annotation/json_annotation.dart';

part 'product_briefly.g.dart';

@JsonSerializable()
class ProductBriefly {
  int id;
  @JsonKey(name: 'is_favorites')
  bool isFavorites;
  String title;
  @JsonKey(name: 'price_without_discount')
  double priceWithoutDiscount;
  @JsonKey(name: 'discount_price')
  double discountPrice;
  String picture;

  ProductBriefly({
    required this.id,
    required this.isFavorites,
    required this.title,
    required this.priceWithoutDiscount,
    required this.discountPrice,
    required this.picture,
  });

  factory ProductBriefly.fromJson(Map<String, dynamic> json) =>
      _$ProductBrieflyFromJson(json);

  Map<String, dynamic> toJson() => _$ProductBrieflyToJson(this);
}
