import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int? id;
  final String name;
  const Product({this.id, required this.name});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{ProductKeys.id: id, ProductKeys.name: name};
  }

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(id: map[ProductKeys.id], name: map[ProductKeys.name]);
  }

  @override
  List<Object> get props {
    return [name];
  }

  Product copyWith({
    int? id,
    String? name,
  }) {
    return Product(id: id ?? this.id, name: name ?? this.name);
  }
}

class ProductKeys {
  const ProductKeys._();
  static const String id = 'id';
  static const String name = 'name';
}
