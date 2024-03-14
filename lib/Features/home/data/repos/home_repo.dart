import 'package:dartz/dartz.dart';
import 'package:slashintern/Features/home/data/Models/product_model/product_model.dart';
import 'package:slashintern/Features/home/data/Models/single_product_model/single_product_model.dart';
import 'package:slashintern/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductModel>>> fetchAllProducts();
  Future<Either<Failure, SingleProductModel>> fetchProduct({required int id});
//  Future<Either<Failure, List<ProductVariation>>> fetchProductVariation();
}
