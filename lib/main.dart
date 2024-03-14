import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashintern/Features/home/data/repos/home_repo_impl.dart';
import 'package:slashintern/Features/home/presentation/manger/homeProductsCubit/home_products_cubit.dart';
import 'package:slashintern/core/utils/routes.dart';
import 'package:slashintern/core/utils/serices_locator.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeProductsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchAllProducts(),
        )
      ],
      child: MaterialApp.router(
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
        ),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
