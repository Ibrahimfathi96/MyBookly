import 'package:bookly/Features/search/presentation/view/widgets/search_view_appbar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  static const String routeName = '/searchview';
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              CustomSearchTextField()
            ],
          ),
        ),
      ),
    );
  }
}
