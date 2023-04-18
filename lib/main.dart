import 'package:bookly/Core/Utils/app_router.dart';
import 'package:bookly/Core/Utils/service_locator.dart';
import 'package:bookly/Features/Home/data_layer/repository/homs_repo_impl.dart';
import 'package:bookly/Features/Home/presentation_layer/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyBookly());
}

class MyBookly extends StatelessWidget {
  const MyBookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
