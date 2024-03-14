import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:slashintern/Features/home/data/Models/product_model/product_model.dart';
import 'package:slashintern/Features/home/data/Models/single_product_model/single_product_model.dart';
import 'package:slashintern/Features/home/data/repos/home_repo.dart';
import 'package:slashintern/core/errors/failures.dart';
import 'package:slashintern/core/utils/api/api_services';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<ProductModel>>> fetchAllProducts() async {
    try {
      var data = await apiService.get(endPoint: "product");
      List<ProductModel> products = [];
      for (var p in data["data"]) {
        products.add(ProductModel.fromJson(p));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, SingleProductModel>> fetchProduct(
      {required int id}) async {
    try {
      var data = await apiService.get(endPoint: "product/$id");
      SingleProductModel product = SingleProductModel.fromJson(data["data"]);

      return right(product);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
