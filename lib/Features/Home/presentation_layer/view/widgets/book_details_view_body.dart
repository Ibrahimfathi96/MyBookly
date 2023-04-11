import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_section.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        BookDetailsSection(),
        Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'You can also like',
            style: Styles.textStyle18,
          ),
        ),
        Expanded(child: Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: FeaturedBooksListView(),
        )),
      ],
    );
  }
}


