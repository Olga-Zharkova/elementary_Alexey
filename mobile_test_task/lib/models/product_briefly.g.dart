// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_briefly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductBriefly _$ProductBrieflyFromJson(Map<String, dynamic> json) =>
    ProductBriefly(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool,
      title: json['title'] as String,
      priceWithoutDiscount: (json['price_without_discount'] as num).toDouble(),
      discountPrice: (json['discount_price'] as num).toDouble(),
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$ProductBrieflyToJson(ProductBriefly instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
    };
