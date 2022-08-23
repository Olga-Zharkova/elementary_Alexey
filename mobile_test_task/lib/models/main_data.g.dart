// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainData _$MainDataFromJson(Map<String, dynamic> json) => MainData(
      productActual: (json['home_store'] as List<dynamic>)
          .map((e) => ProductActual.fromJson(e as Map<String, dynamic>))
          .toList(),
      productBriefly: (json['best_seller'] as List<dynamic>)
          .map((e) => ProductBriefly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainDataToJson(MainData instance) => <String, dynamic>{
      'home_store': instance.productActual,
      'best_seller': instance.productBriefly,
    };
