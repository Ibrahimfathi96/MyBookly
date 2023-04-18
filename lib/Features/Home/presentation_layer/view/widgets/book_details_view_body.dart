import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_section.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BookDetailsSection(bookModel: bookModel,),
        const Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            'You can also like',
            style: Styles.textStyle18,
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: SimilarBooksListView(),
          ),
        ),
      ],
    );
  }
}
