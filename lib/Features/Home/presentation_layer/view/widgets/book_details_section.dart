import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Core/widgets/custom_button_details.dart';
import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.3, vertical: size.width * 0.05),
          child: FeaturedBooksListViewItem(
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bookModel.volumeInfo!.authors?[0] ?? '',
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
              color: const Color(0xff707070), fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(child: BooksRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0,
          count:  bookModel.volumeInfo?.ratingsCount ?? 0,
        )),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
          child: CustomDetailsButtons(bookModel: bookModel,),
        ),
      ],
    );
  }
}
