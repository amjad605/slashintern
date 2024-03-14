import 'package:equatable/equatable.dart';

import 'brands.dart';
import 'product_variation.dart';
import 'sub_categories.dart';

class ProductModel extends Equatable {
  final int? id;
  final String? name;
  final String? type;
  final String? description;
  final int? subCategoryId;
  final int? brandId;
  final dynamic bostaSizeId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final int? productRating;
  final int? estimatedDaysPreparing;
  final Brands? brands;
  final List<ProductVariation>? productVariations;
  final SubCategories? subCategories;
  final dynamic sizeChart;
  final int? notApprovedVariants;

  const ProductModel({
    this.id,
    this.name,
    this.type,
    this.description,
    this.subCategoryId,
    this.brandId,
    this.bostaSizeId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.productRating,
    this.estimatedDaysPreparing,
    this.brands,
    this.productVariations,
    this.subCategories,
    this.sizeChart,
    this.notApprovedVariants,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        type: json['type'] as String?,
        description: json['description'] as String?,
        subCategoryId: json['sub_category_id'] as int?,
        brandId: json['brand_id'] as int?,
        bostaSizeId: json['bosta_size_id'] as dynamic,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        deletedAt: json['deletedAt'] as dynamic,
        productRating: json['product_rating'] as int?,
        estimatedDaysPreparing: json['estimated_days_preparing'] as int?,
        brands: json['Brands'] == null
            ? null
            : Brands.fromJson(json['Brands'] as Map<String, dynamic>),
        productVariations: (json['ProductVariations'] as List<dynamic>?)
            ?.map((e) => ProductVariation.fromJson(e as Map<String, dynamic>))
            .toList(),
        subCategories: json['SubCategories'] == null
            ? null
            : SubCategories.fromJson(
                json['SubCategories'] as Map<String, dynamic>),
        sizeChart: json['SizeChart'] as dynamic,
        notApprovedVariants: json['notApprovedVariants'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'description': description,
        'sub_category_id': subCategoryId,
        'brand_id': brandId,
        'bosta_size_id': bostaSizeId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'deletedAt': deletedAt,
        'product_rating': productRating,
        'estimated_days_preparing': estimatedDaysPreparing,
        'Brands': brands?.toJson(),
        'ProductVariations': productVariations?.map((e) => e.toJson()).toList(),
        'SubCategories': subCategories?.toJson(),
        'SizeChart': sizeChart,
        'notApprovedVariants': notApprovedVariants,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      type,
      description,
      subCategoryId,
      brandId,
      bostaSizeId,
      createdAt,
      updatedAt,
      deletedAt,
      productRating,
      estimatedDaysPreparing,
      brands,
      productVariations,
      subCategories,
      sizeChart,
      notApprovedVariants,
    ];
  }
}
