import 'package:equatable/equatable.dart';

class SubCategory extends Equatable {
  final int? id;
  final String? name;

  const SubCategory({this.id, this.name});

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  @override
  List<Object?> get props => [id, name];
}
