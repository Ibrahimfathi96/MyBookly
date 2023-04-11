import 'package:bookly/Features/Home/presentation_layer/view/book_details_view.dart';
import 'package:bookly/Features/Home/presentation_layer/view/home_view.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Presentation_layer/Views/SplashView.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashView.routeName,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: SearchView.routeName,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: BookDetailsView.routeName,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}