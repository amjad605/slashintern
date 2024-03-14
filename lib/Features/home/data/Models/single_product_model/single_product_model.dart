import 'package:equatable/equatable.dart';

import 'avaiable_property.dart';
import 'count.dart';
import 'sub_category.dart';
import 'variation.dart';

class SingleProductModel extends Equatable {
  final int? id;
  final String? name;
  final String? type;
  final String? description;
  final int? brandId;
  final dynamic bostaSizeId;
  final int? productRating;
  final int? estimatedDaysPreparing;
  final Count? count;
  final dynamic sizeChart;
  final SubCategory? subCategory;
  final List<Variation>? variations;
  final List<AvaiableProperty>? avaiableProperties;
  final String? brandName;
  final String? brandImage;

  const SingleProductModel({
    this.id,
    this.name,
    this.type,
    this.description,
    this.brandId,
    this.bostaSizeId,
    this.productRating,
    this.estimatedDaysPreparing,
    this.count,
    this.sizeChart,
    this.subCategory,
    this.variations,
    this.avaiableProperties,
    this.brandName,
    this.brandImage,
  });

  factory SingleProductModel.fromJson(Map<String, dynamic> json) {
    return SingleProductModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      brandId: json['brand_id'] as int?,
      bostaSizeId: json['bosta_size_id'] as dynamic,
      productRating: json['product_rating'] as int?,
      estimatedDaysPreparing: json['estimated_days_preparing'] as int?,
      count: json['_count'] == null
          ? null
          : Count.fromJson(json['_count'] as Map<String, dynamic>),
      sizeChart: json['SizeChart'] as dynamic,
      subCategory: json['subCategory'] == null
          ? null
          : SubCategory.fromJson(json['subCategory'] as Map<String, dynamic>),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      avaiableProperties: (json['avaiableProperties'] as List<dynamic>?)
          ?.map((e) => AvaiableProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandName: json['brandName'] as String?,
      brandImage: json['brandImage'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'description': description,
        'brand_id': brandId,
        'bosta_size_id': bostaSizeId,
        'product_rating': productRating,
        'estimated_days_preparing': estimatedDaysPreparing,
        '_count': count?.toJson(),
        'SizeChart': sizeChart,
        'subCategory': subCategory?.toJson(),
        'variations': variations?.map((e) => e.toJson()).toList(),
        'avaiableProperties':
            avaiableProperties?.map((e) => e.toJson()).toList(),
        'brandName': brandName,
        'brandImage': brandImage,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      type,
      description,
      brandId,
      bostaSizeId,
      productRating,
      estimatedDaysPreparing,
      count,
      sizeChart,
      subCategory,
      variations,
      avaiableProperties,
      brandName,
      brandImage,
    ];
  }
}
