import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSource {
  // save auth data
  Future<void> saveAuthData(AuthResponseModel model) async {
    final prefs =
        await SharedPreferences.getInstance(); // ? buat object nya dulu
    await prefs.setString(
        'auth',
        model
            .toJson()); // dijadiin String model nya, ini bearer token nya sudah disimpan di lokal
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth'); // karena remove Future maka ditambahkan await
  }

  // getToken ini akan dipanggil ketika posisi user sudah login
  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final authJson = prefs.getString('auth') ??
        ''; // getString ini nullable kalau tidak ada 'auth' nya maka akan null
    final authData = AuthResponseModel.fromJson(authJson);
    return authData.jwt ??
        ''; // ketika dia null maka akan menjadi string kosong menghindari aplikasi error
  }

  Future<User> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final authJson = prefs.getString('auth') ??
        ''; // jika authJson ini dapetnya token null maka authData tidak akan bisa berjalan
    final authData = AuthResponseModel.fromJson(authJson);
    return authData.user!;
  }

  Future<bool> isLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final authJson = prefs.getString('auth') ?? '';
    return authJson.isNotEmpty;
  }

  // ! yang membutuhkan token pada saat kita melakukan order barang, kalau cuma liat data product tidak butuh token
  // ! disini juga tidak menerapkan refresh token, jika token sudah expired maka akan dilempar ke halaman login
}
