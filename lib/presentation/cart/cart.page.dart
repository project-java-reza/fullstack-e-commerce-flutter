import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/extensions/int_ext.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/order_request_model.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/payment/payment_page.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/payment/widgets/success_page.dart';
import '../../common/component/button.dart';
import '../../common/component/row_text.dart';
import '../../common/component/spaces.dart';
import '../../common/constant/colors.dart';
import 'bloc/cart/cart_bloc.dart';
import 'bloc/order/order_bloc.dart';
import 'widgets/cart_item_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    super.initState();
  }

  List<Item> items = [];
  int localTotalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return state.maybeWhen(orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, loaded: (carts) {
                return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SpaceHeight(16.0),
                  itemCount: carts.length,
                  itemBuilder: (context, index) {
                    return CartItemWidget(
                      data: carts[index],
                    );
                  },
                );
              });
            },
          ),
          //if (carts.isNotEmpty) const SpaceHeight(16.0),
          //button for choose shipping address
          //if (carts.isNotEmpty)
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 40),
          //   child: Button.filled(
          //     width: 60,
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const ShippingAddressPage()),
          //       );
          //     },
          //     label: 'Pilih Alamat Pengiriman',
          //   ),
          // ),
          const SpaceHeight(16.0),

          // show alamat pengiriman
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Alamat Pengiriman',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SpaceHeight(16.0),
                Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorName.grey,
                  ),
                ),
                SpaceHeight(8.0),
                Text(
                  'Alamat Lengkap',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorName.grey,
                  ),
                ),
                SpaceHeight(8.0),
                Text(
                  'Kota, Provinsi, Kode Pos',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorName.grey,
                  ),
                ),
                SpaceHeight(8.0),
                Text(
                  'No Handphone',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorName.grey,
                  ),
                ),
              ],
            ),
          ),
          const SpaceHeight(16.0),
          //container for dropdown courier
          // if (carts.isNotEmpty)
          // Container(
          //     padding: const EdgeInsets.all(16.0),
          //     decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          //       border: Border.all(color: ColorName.border),
          //     ),
          //     child: CustomDropdown(
          //       value: 'JNE',
          //       items: ['JNE', 'J&T'],
          //       label: 'Kurir',
          //       onChanged: (value) {},
          //     )),
          // if (carts.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              border: Border.all(color: ColorName.border),
            ),
            child: Column(
              children: [
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return RowText(
                          label: 'Total Harga',
                          value: 0.currencyFormatRp,
                        );
                      },
                      loaded: (carts) {
                        int totalPrice = 0;
                        carts.forEach((element) {
                          totalPrice +=
                              int.parse(element.product.attributes.price) *
                                  element.quantity;
                        });
                        localTotalPrice = totalPrice;
                        items = carts
                            .map(
                              (e) => Item(
                                id: e.product.id,
                                productName: e.product.attributes.name,
                                price: int.parse(e.product.attributes.price),
                                qty: e.quantity,
                              ),
                            )
                            .toList();
                        return RowText(
                          label: 'Total Harga',
                          value: totalPrice.currencyFormatRp,
                        );
                      },
                    ); // konsep Freezed pakainya maybeWhen, kalau tidak pakai maybeWhen semua state harus dikeluarkan
                  },
                ),
                const SpaceHeight(12.0),
                const RowText(
                  label: 'Biaya Pengiriman',
                  value: 'Free Ongkir', //150000.currencyFormatRp,
                ),
                const SpaceHeight(40.0),
                const Divider(color: ColorName.border),
                const SpaceHeight(12.0),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return RowText(
                          label: 'Total Harga',
                          value: 0.currencyFormatRp,
                        );
                      },
                      loaded: (carts) {
                        int totalPrice = 0;
                        carts.forEach((element) {
                          totalPrice +=
                              int.parse(element.product.attributes.price) *
                                  element.quantity;
                        });
                        return RowText(
                          label: 'Total Harga',
                          value: totalPrice.currencyFormatRp,
                          valueColor: ColorName.primary,
                          fontWeight: FontWeight.w700,
                        );
                      },
                    ); // konsep Freezed pakainya maybeWhen, kalau tidak pakai maybeWhen semua state harus dikeluarkan
                  },
                ),
                // RowText(
                //   label: 'Total Harga',
                //   value: 1750000.currencyFormatRp,
                //   valueColor: ColorName.primary,
                //   fontWeight: FontWeight.w700,
                // ),
                const SpaceHeight(16.0),
                BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (response) {
                        context.read<CartBloc>().add(const CartEvent.started()); // disini started atau cartnya kosong []
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return PaymentPage(
                                invoiceUrl: response.invoiceUrl,
                                orderId: response.externalId,
                                // externalId ini adalah orderId yang kita kirim
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                  builder: (context, state) {
                    // ini ketika ke create order nya dan di lempar ke response success
                    return state.maybeWhen(orElse: () {
                      return Button.filled(
                        onPressed: () {
                          context.read<OrderBloc>().add(
                                OrderEvent.order(
                                  OrderRequestModel(
                                    data: Data(
                                      items: items,
                                      totalPrice: localTotalPrice,
                                      deliveryAddress: 'Tangerang, Banten',
                                      courierName: 'JNE',
                                      courierPrice: 0,
                                      status: 'waiting-payment',
                                    ),
                                  ),
                                ),
                              );
                        },
                        label: 'Bayar Sekarang',
                      );
                    }, loading: () {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
