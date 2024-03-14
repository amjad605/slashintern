import 'package:equatable/equatable.dart';

class ProductVarientImage extends Equatable {
  final int? id;
  final String? imagePath;
  final int? productVarientId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProductVarientImage({
    this.id,
    this.imagePath,
    this.productVarientId,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductVarientImage.fromJson(Map<String, dynamic> json) {
    return ProductVarientImage(
      id: json['id'] as int?,
      imagePath: json['image_path'] as String?,
      productVarientId: json['product_varient_id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'image_path': imagePath,
        'product_varient_id': productVarientId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      imagePath,
      productVarientId,
      createdAt,
      updatedAt,
    ];
  }
}
