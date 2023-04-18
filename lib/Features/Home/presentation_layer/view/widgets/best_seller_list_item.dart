import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:bookly/Features/Home/presentation_layer/view/book_details_view.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.book}) : super(key: key);
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(BookDetailsView.routeName,extra: book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child:FeaturedBooksListViewItem(
                imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width /2,
                      child: Text(
                        book.volumeInfo!.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20N,
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Text(
                      book.volumeInfo!.authors![0],
                      style: Styles.textStyle16,
                    ),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Free',
                        style: Styles.textStyle20,
                        ),
                        BooksRating(
                          count:book.volumeInfo!.ratingsCount ?? 0 ,
                          rating: book.volumeInfo!.averageRating ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

