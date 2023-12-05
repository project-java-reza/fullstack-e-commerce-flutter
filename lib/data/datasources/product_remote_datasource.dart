import 'package:dartz/dartz.dart';
import 'package:flutter_ecommerce_fic9_new_build/common/constant/variables.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/products_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDataSource {
  Future<Either<String, ProductsResponseModel>> getAllProduct() async {
    final response = await http
        .get(Uri.parse('${Variables.baseUrl}/api/products?populate=*'));
    if (response.statusCode == 200) {
      return Right(ProductsResponseModel.fromJson(response.body));
    } else {
      return const Left('Server Error');
    }
  }
}
