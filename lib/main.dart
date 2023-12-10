import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/auth/login_page.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/dashboard/dashboard_page.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/home/widgets/bloc/products/products_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/payment/bloc/order/order_detail_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/shipping_address/bloc/add_address/add_address_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/shipping_address/bloc/city/city_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/shipping_address/bloc/get_address/get_address_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/shipping_address/bloc/province/province_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/shipping_address/bloc/subdistrict/subdistrict_bloc.dart';
import 'presentation/auth/bloc/login/login_bloc.dart';
import 'presentation/auth/bloc/register/register_bloc.dart';
import 'presentation/cart/bloc/cart/cart_bloc.dart';
import 'presentation/cart/bloc/get_cost/get_cost_bloc.dart';
import 'presentation/cart/bloc/order/order_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // ? 2. Setelah di inject disini kita sudah bisa menggunakan register BLOC
          create: (context) => RegisterBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => ProductsBloc()
            ..add(const ProductsEvent
                .getAll()), // ketika ..add ditambahkan maka otomatis memanggil eventnya getAll dan ProductsBloc posisinya sudah berisi data list dari product
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => OrderBloc(),
        ),
        BlocProvider(
          create: (context) => OrderDetailBloc(),
        ),
        BlocProvider(
          create: (context) => ProvinceBloc(),
        ),
        BlocProvider(
          create: (context) => CityBloc(),
        ),
        BlocProvider(
          create: (context) => SubdistrictBloc(),
        ),
        BlocProvider(
          create: (context) => AddAddressBloc(),
        ),
        BlocProvider(
          create: (context) => GetAddressBloc(),
        ),
        BlocProvider(
          create: (context) => GetCostBloc(),
        ),
      ],
      child: MaterialApp(
        // ! 1. Sebelum inject Bloc maka MaterialApp ini dibungkus dengan BLOC Provider
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FutureBuilder<bool>(
          future: AuthLocalDataSource().isLogin(),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.data! == true) {
              return const DashboardPage();
            } else {
              return const LoginPage();
            } // dikasih tanda seru karena dia akan mengecek kalau null dia tidak akan masuk snapshot.data dan karena !null maka akan ada nilainya
          },
        ),
      ),
    );
  }
}
