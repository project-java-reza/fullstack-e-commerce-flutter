import 'package:flutter/material.dart';
import '../../../common/component/button.dart';
import '../../../common/component/spaces.dart';
import '../../../common/constant/colors.dart';
import '../../../data/models/responses/get_address_response_model.dart';

class ShippingItemWidget extends StatelessWidget {
  final bool isSelected;
  final GetAddress data;
  final VoidCallback onTap;
  final VoidCallback onEditTap;
  final VoidCallback onDeleteTap;

  const ShippingItemWidget({
    Key? key,
    required this.isSelected,
    required this.data,
    required this.onTap,
    required this.onEditTap,
    required this.onDeleteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(
              color: isSelected ? ColorName.primary : ColorName.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.attributes.name,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(16.0),
            Text(
              data.attributes.address,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            const SpaceHeight(16.0),
            Text(
              data.attributes.phone,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
            const SpaceHeight(16.0),
            Row(
              children: [
                Button.filled(
                  onPressed: onEditTap,
                  label: 'Edit',
                  width: 80.0,
                ),
                const SpaceWidth(16.0),
                IconButton(
                  onPressed: onDeleteTap,
                  icon: const ImageIcon(
                    AssetImage('assets/icons/Trash.png'),
                    color: ColorName.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
