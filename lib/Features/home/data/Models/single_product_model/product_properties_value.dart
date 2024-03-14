import 'package:equatable/equatable.dart';

class ProductPropertiesValue extends Equatable {
  final String? value;
  final String? property;

  ProductPropertiesValue({this.value, this.property});

  factory ProductPropertiesValue.fromJson(Map<String, dynamic> json) {
    return ProductPropertiesValue(
      value: json['value'] as String?,
      property: json['property'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'value': value,
        'property': property,
      };

  @override
  List<Object?> get props => [value, property];
}
