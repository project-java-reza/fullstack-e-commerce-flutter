import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/extensions/int_ext.dart';

import '../../../common/component/spaces.dart';
import '../../../common/constant/colors.dart';
import '../../../data/models/responses/products_response_model.dart';

// pakai stateless karena cuma nampilin data aja gada operasi click
class ProductInfoWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final Product product;
  final void Function(bool isWishlist) onWishlistTap;

  const ProductInfoWidget(
      {super.key,
      required this.padding,
      required this.product,
      required this.onWishlistTap});

  @override
  Widget build(BuildContext context) {
    bool isWishlist = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.attributes.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              StatefulBuilder(
                builder: (context, setState) {
                  return IconButton(
                    onPressed: () {
                      isWishlist = !isWishlist;
                      setState(() {});
                      onWishlistTap(isWishlist);
                    },
                    icon: isWishlist
                        ? const Icon(
                            Icons.favorite,
                            color: ColorName.red,
                          )
                        : const Icon(Icons.favorite_border),
                    iconSize: 24.0,
                  );
                },
              ),
            ],
          ),
        ),
        const SpaceHeight(4.0),
        Padding(
          padding: padding,
          child: Text(
            // product.attributes.price.priceFormat // karena price ini String dan priceFormat bentuknya integer maka kita convert dulu
            int.parse(product.attributes.price).currencyFormatRp,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: ColorName.primary,
            ),
          ),
        ),
      ],
    );
  }
}
