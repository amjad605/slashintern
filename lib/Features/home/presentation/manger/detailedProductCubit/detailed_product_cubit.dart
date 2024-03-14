import 'package:bloc/bloc.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:equatable/equatable.dart';
import 'package:slashintern/Features/home/data/Models/single_product_model/single_product_model.dart';
import 'package:slashintern/Features/home/data/repos/home_repo.dart';

part 'detailed_product_state.dart';

class DetailedProductCubit extends Cubit<DetailedProductState> {
  DetailedProductCubit(this.homeRepo, this.id)
      : super(DetailedProductInitial());
  final HomeRepo homeRepo;
  int indx = 0;
  int variationindex = 0;
  int sizeIndex = 0;
  var prducts;
  CarouselController controller = CarouselController();
  final int id;
  Future<void> fetchAllProducts() async {
    emit(DetailedProductsLoading());
    var result = await homeRepo.fetchProduct(id: id);
    result.fold((e) => emit(DetailedProductsFailure(errMsg: e.errmsg)),
        (products) {
      prducts = products;
      emit(
        DetailedProductsSuccess(products: products),
      );
    });
  }

  void changeIndex(int index) {
    indx = index;
    emit(DeatailedChangeIndex());
    emit(DetailedProductsSuccess(products: prducts));
  }

  void changeVariationIndex(int index) {
    variationindex = index;
    emit(DeatailedChangeIndex());
    emit(DetailedProductsSuccess(products: prducts));
  }

  void changeSizeIndex(int index) {
    variationindex = index;
    emit(DeatailedChangeIndex());
    emit(DetailedProductsSuccess(products: prducts));
  }
}
