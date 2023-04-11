import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:size.width * 0.3,
          vertical: size.width * 0.05),
      child: const FeaturedBooksListViewItem(),
    );
  }
}
