

import 'package:flutter_ecommerce_fic9_new_build/common/extensions/int_ext.dart';

class OrderProductModel {
  final String imagePath;
  final String name;
  final int price;

  OrderProductModel({
    required this.imagePath,
    required this.name,
    required this.price,
  });

  String get priceFormat => price.currencyFormatRp;
}
