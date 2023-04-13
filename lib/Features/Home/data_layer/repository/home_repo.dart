import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  /*Either class allows us to return more than one type
  * for example here we want List of book model as a return type
  * but what if the the api call failed? we need another return type to handle this failure here
  * so Either is a good way to handle the error return type*/
Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
}