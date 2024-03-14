part of 'detailed_product_cubit.dart';

sealed class DetailedProductState extends Equatable {
  const DetailedProductState();

  @override
  List<Object> get props => [];
}

final class DetailedProductInitial extends DetailedProductState {}

class DetailedProductsLoading extends DetailedProductState {}

class DetailedProductsSuccess extends DetailedProductState {
  final SingleProductModel products;

  DetailedProductsSuccess({required this.products});
}

class DetailedProductsFailure extends DetailedProductState {
  final String errMsg;
  const DetailedProductsFailure({required this.errMsg});
}

class DeatailedChangeIndex extends DetailedProductState {}
