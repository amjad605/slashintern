import 'package:equatable/equatable.dart';

class Count extends Equatable {
  final int? productVariations;

  const Count({this.productVariations});

  factory Count.fromJson(Map<String, dynamic> json) => Count(
        productVariations: json['ProductVariations'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'ProductVariations': productVariations,
      };

  @override
  List<Object?> get props => [productVariations];
}
