import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slashintern/Features/home/data/Models/product_model/product_model.dart';
import 'package:slashintern/Features/home/data/repos/home_repo.dart';

part 'home_products_state.dart';

class HomeProductsCubit extends Cubit<HomeProductsState> {
  HomeProductsCubit(this.homeRepo) : super(HomeProductsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchAllProducts() async {
    emit(HomeProductsLoading());
    var result = await homeRepo.fetchAllProducts();
    result.fold((e) => emit(HomeProductsFailure(errMsg: e.errmsg)),
        (products) => emit(HomeProductsSuccess(products: products)));
  }
}
