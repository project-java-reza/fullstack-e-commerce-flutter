import 'package:flutter/material.dart';

import '../../../common/component/spaces.dart';

class ProductDescriptionWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String description;

  const ProductDescriptionWidget(
      {super.key, required this.padding, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: const Text(
            "Deskripsi Produk",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SpaceHeight(11.0),
        Padding(
          padding: padding,
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
