import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/buyer_order_response.dart';
import '../../../common/component/button.dart';
import '../../../common/component/row_text.dart';
import '../../../common/component/spaces.dart';
import '../../../common/constant/colors.dart';
import '../manifest_delivery_page.dart';
import '../order_detail_page.dart';

class OrderCard extends StatelessWidget {
  final BuyerOrder data;
  const OrderCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderDetailPage(
              buyerOrder: data,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: ColorName.border),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NO RESI: ${data.attributes.noResi}',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                Button.filled(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManifestDeliveryPage(
                          buyerOrder: data,
                        ),
                      ),
                    );
                  },
                  label: 'Lacak',
                  height: 20.0,
                  width: 94.0,
                  fontSize: 11.0,
                ),
              ],
            ),
            const SpaceHeight(24.0),
            RowText(label: 'Status', value: data.attributes.status),
            const SpaceHeight(12.0),
            //RowText(label: 'Item', value: data.item),
            const SpaceHeight(12.0),
            RowText(
                label: 'Harga',
                value: data.attributes.totalPrice.currencyFormatRp),
          ],
        ),
      ),
    );
  }
}
