import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/constant/variables.dart';

import '../../common/component/button.dart';
import '../../common/component/spaces.dart';
import '../../common/constant/colors.dart';
import '../../common/constant/images.dart' as localImages;
import '../../data/models/responses/products_response_model.dart';
import '../cart/cart.page.dart';
import '../home/widgets/image_slider.dart';
import '../home/widgets/product_model.dart';
import 'widget/product_description_widget.dart';
import 'widget/product_info_widget.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  EdgeInsets paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20.0);
  final List<String> images = [
    localImages.Images.product3,
    localImages.Images.product3,
    localImages.Images.product3,
    localImages.Images.product3,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: ListView(
        children: [
          ImageSlider(
            items: [
              '${Variables.baseUrl}${widget.product.attributes.images.data.first.attributes.url}'
            ],
            isAsset: false,
          ), // kenapa ini menggunakan widget ? karena Product ada di StateFull sedangkan ini ada di State kelas extends di bawah Statefull kalau mau ambil data di Statefull pakainya widget
          const SpaceHeight(16.0),
          ProductInfoWidget(
            padding: paddingHorizontal,
            product: widget.product,
            onWishlistTap: (isWishlist) {
              // TODO: on wishlist tap
            },
          ),
          const SpaceHeight(11.0),
          ProductDescriptionWidget(
              padding: paddingHorizontal,
              description: widget.product.attributes.description),
          const SpaceHeight(11.0),
          Padding(
            padding: paddingHorizontal,
            child: Divider(
              color: ColorName.grey.withOpacity(0.18),
            ),
          ),
          const SpaceHeight(11.0),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.withOpacity(0.18)),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Button.filled(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                },
                label: "Add to Cart",
              ),
            ),
            const SpaceWidth(15.0),
            Flexible(
              child: Button.outlined(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PaymentPage()),
                  // );
                },
                label: "Buy Now",
                color: ColorName.light,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
