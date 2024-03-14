import 'package:equatable/equatable.dart';

import 'product_properties_value.dart';
import 'product_varient_image.dart';

class Variation extends Equatable {
  final int? id;
  final int? price;
  final int? quantity;
  final bool? inStock;
  final List<ProductVarientImage>? productVarientImages;
  final List<ProductPropertiesValue>? productPropertiesValues;
  final String? productStatus;
  final bool? isDefault;
  final int? productVariationStatusId;

  const Variation({
    this.id,
    this.price,
    this.quantity,
    this.inStock,
    this.productVarientImages,
    this.productPropertiesValues,
    this.productStatus,
    this.isDefault,
    this.productVariationStatusId,
  });

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
        id: json['id'] as int?,
        price: json['price'] as int?,
        quantity: json['quantity'] as int?,
        inStock: json['inStock'] as bool?,
        productVarientImages: (json['ProductVarientImages'] as List<dynamic>?)
            ?.map(
                (e) => ProductVarientImage.fromJson(e as Map<String, dynamic>))
            .toList(),
        productPropertiesValues:
            (json['productPropertiesValues'] as List<dynamic>?)
                ?.map((e) =>
                    ProductPropertiesValue.fromJson(e as Map<String, dynamic>))
                .toList(),
        productStatus: json['productStatus'] as String?,
        isDefault: json['isDefault'] as bool?,
        productVariationStatusId: json['product_variation_status_id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'price': price,
        'quantity': quantity,
        'inStock': inStock,
        'ProductVarientImages':
            productVarientImages?.map((e) => e.toJson()).toList(),
        'productPropertiesValues':
            productPropertiesValues?.map((e) => e.toJson()).toList(),
        'productStatus': productStatus,
        'isDefault': isDefault,
        'product_variation_status_id': productVariationStatusId,
      };

  @override
  List<Object?> get props {
    return [
      id,
      price,
      quantity,
      inStock,
      productVarientImages,
      productPropertiesValues,
      productStatus,
      isDefault,
      productVariationStatusId,
    ];
  }
}
