import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDetailsButtons extends StatelessWidget {
  final BookModel bookModel;
  const CustomDetailsButtons({Key? key, required this.bookModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookButton(
            onPressed: (){},
            backGroundColor: Colors.white,
            text: '19.99€',
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomBookButton(
            onPressed: ()async{
              Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            backGroundColor: const Color(0xffEF8262),
            text: 'Free Preview',
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}