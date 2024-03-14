part of 'home_products_cubit.dart';

sealed class HomeProductsState extends Equatable {
  const HomeProductsState();

  @override
  List<Object> get props => [];
}

class HomeProductsInitial extends HomeProductsState {}

class HomeProductsLoading extends HomeProductsState {}

class HomeProductsSuccess extends HomeProductsState {
  final List<ProductModel> products;

  const HomeProductsSuccess({required this.products});
}

class HomeProductsFailure extends HomeProductsState {
  final String errMsg;
  const HomeProductsFailure({required this.errMsg});
}
