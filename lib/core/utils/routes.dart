import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:slashintern/Features/Splash/presentation/views/splash_view.dart';
import 'package:slashintern/Features/home/data/repos/home_repo_impl.dart';
import 'package:slashintern/Features/home/presentation/manger/detailedProductCubit/detailed_product_cubit.dart';
import 'package:slashintern/Features/home/presentation/views/detailed_item_view.dart';
import 'package:slashintern/Features/home/presentation/views/home_view.dart';
import 'package:slashintern/core/utils/serices_locator.dart';

abstract class AppRouter {
  static const KDetailedeView = "/DetailedView";
  static const KhomeView = "/HomeView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: KhomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: KDetailedeView,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            DetailedProductCubit(getIt.get<HomeRepoImpl>(), state.extra as int)
              ..fetchAllProducts(),
        child: DetailedItemView(),
      ),
    ),
  ]);
}
