import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:slashintern/Features/home/data/repos/home_repo_impl.dart';
import 'package:slashintern/core/utils/api/api_services';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiService>()));
}
