import 'package:equatable/equatable.dart';

class Value extends Equatable {
  final String? value;
  final int? id;

  const Value({this.value, this.id});

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        value: json['value'] as String?,
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'value': value,
        'id': id,
      };

  @override
  List<Object?> get props => [value, id];
}
