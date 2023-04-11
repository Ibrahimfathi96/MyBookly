import 'package:bookly/Features/Home/presentation_layer/view/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class SearchBooksResultListView extends StatelessWidget {
  const SearchBooksResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:12.0),
        child: ListView.builder(
          itemCount:10 ,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: BestSellerListViewItem(),
          ),
        ),
      ),
    );
  }
}
