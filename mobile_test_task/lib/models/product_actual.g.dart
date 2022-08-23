// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_actual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductActual _$ProductActualFromJson(Map<String, dynamic> json) =>
    ProductActual(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      isBuy: json['is_buy'] as bool,
      isNew: json['is_new'] as bool? ?? false,
    );

Map<String, dynamic> _$ProductActualToJson(ProductActual instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'is_buy': instance.isBuy,
    };
