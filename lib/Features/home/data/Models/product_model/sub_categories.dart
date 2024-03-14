import 'package:equatable/equatable.dart';

class SubCategories extends Equatable {
  final int? id;
  final String? name;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? categoryId;
  final String? imagePath;

  const SubCategories({
    this.id,
    this.name,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.categoryId,
    this.imagePath,
  });

  factory SubCategories.fromJson(Map<String, dynamic> json) => SubCategories(
        id: json['id'] as int?,
        name: json['name'] as String?,
        deletedAt: json['deletedAt'] as dynamic,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        categoryId: json['category_id'] as int?,
        imagePath: json['image_path'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'deletedAt': deletedAt,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'category_id': categoryId,
        'image_path': imagePath,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      deletedAt,
      createdAt,
      updatedAt,
      categoryId,
      imagePath,
    ];
  }
}
