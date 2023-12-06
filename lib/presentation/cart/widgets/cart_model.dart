import 'package:flutter_ecommerce_fic9_new_build/common/extensions/int_ext.dart';

class CartModel {
  final int id;
  final String imagePath;
  final String name;
  final int price;
  int quantity;

  CartModel({
    required this.id,
    required this.imagePath,
    required this.name,
    required this.price,
    this.quantity = 0,
  });

  String get priceFormat => price.currencyFormatRp;
}
