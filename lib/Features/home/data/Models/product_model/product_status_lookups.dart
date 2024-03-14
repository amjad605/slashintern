import 'package:equatable/equatable.dart';

class ProductStatusLookups extends Equatable {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ProductStatusLookups({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductStatusLookups.fromJson(Map<String, dynamic> json) {
    return ProductStatusLookups(
      id: json['id'] as int?,
      name: json['name'] as String?,
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
        'name': name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [id, name, createdAt, updatedAt];
}
