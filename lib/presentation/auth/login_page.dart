import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/login_request_mode.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/home/dashboard_page.dart';

import '../../common/component/button.dart';
import '../../common/component/custom_text_field.dart';
import '../../common/component/spaces.dart';
import '../../common/constant/colors.dart';
import '../../common/constant/images.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SpaceHeight(80.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130.0),
              child: Image.asset(
                Images.logo,
                width: 100,
                height: 100,
              )),
          const SpaceHeight(24.0),
          const Center(
            child: Text(
              "E-Commerce Login",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: ColorName.dark,
              ),
            ),
          ),
          const SpaceHeight(8.0),
          const Center(
            child: Text(
              "Masuk untuk melanjutkan",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorName.grey,
              ),
            ),
          ),
          const SpaceHeight(40.0),
          CustomTextField(
            controller: emailController,
            label: 'Email',
          ),
          const SpaceHeight(12.0),
          CustomTextField(
            controller: passwordController,
            label: 'Password',
            obscureText: true,
          ),
          const SpaceHeight(24.0),
          BlocConsumer<LoginBloc, LoginState>(
            // Bloc Consumer itu 1 nya dia mendengar (listener) dan 1 nya lagi build widget
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  success: (data) async {
                    AuthLocalDataSource()
                        .saveAuthData(data); // ini akan menyimpan token

                    // ! kalau AuthLocalDataSource tidak ditambahkan await maka akan berjalan secara asynchronous ketika sedang berjalan akan masuk ke code ScaffoldMessenger
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardPage(),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Successfully Login"),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },
                  error: (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(error),
                        backgroundColor: Colors.red,
                      ),
                    );
                  });
            },
            builder: (context, state) {
              return Button.filled(
                onPressed: () {
                  final data = LoginRequestModel(
                      identifier: emailController.text,
                      password: passwordController.text);
                  context.read<LoginBloc>().add(LoginEvent.login(data));
                },
                label: 'Masuk',
              );
            },
          ),
          const SpaceHeight(122.0),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );
              },
              child: const Text.rich(
                TextSpan(
                  text: "Belum punya akun? ",
                  children: [
                    TextSpan(
                      text: "Register",
                      style: TextStyle(color: ColorName.primary),
                    ),
                  ],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: ColorName.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
