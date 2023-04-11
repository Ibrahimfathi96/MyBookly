import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:bookly/Features/search/presentation/view/widgets/search_view_appbar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  static const String routeName = '/searchView';
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              CustomSearchTextField(),
              SizedBox(height: 16,),
              Text(
                "Search Results",
                textAlign: TextAlign.start,
                style: Styles.textStyle22,
              ),
              SearchBooksResultListView()
            ],
          ),
        ),
      ),
    );
  }
}
