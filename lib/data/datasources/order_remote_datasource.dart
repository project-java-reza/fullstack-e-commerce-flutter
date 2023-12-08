import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/constant/variables.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/auth_local_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/order_request_model.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/order_response_model.dart';
import 'package:http/http.dart' as http;

import '../models/responses/order_detail_response.dart';

class OrderRemoteDataSource {
  // return nya diambil dari dart yaitu Either dan kalau gagal returnnya dalam bentuk String
  // kalau sukses returnnya dalam bentuk OrderResponseModel
  // Future harus menggunakan async await
  Future<Either<String, OrderResponseModel>> order(
      OrderRequestModel request) async {
    final token = await AuthLocalDataSource().getToken();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/orders'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return right(OrderResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }

  Future<Either<String, OrderDetailResponseModel>> getOrderById(
      String id) async {
    final token = await AuthLocalDataSource().getToken();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/orders/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      return right(OrderDetailResponseModel.fromJson(response.body));
    } else {
      return left('Server Error');
    }
  }
}
