import 'package:equatable/equatable.dart';

import 'value.dart';

class AvaiableProperty extends Equatable {
  final String? property;
  final List<Value>? values;

  const AvaiableProperty({this.property, this.values});

  factory AvaiableProperty.fromJson(Map<String, dynamic> json) {
    return AvaiableProperty(
      property: json['property'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'property': property,
        'values': values?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [property, values];
}
