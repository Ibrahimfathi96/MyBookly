part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props =>[];
}


class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksFailure extends FeaturedBooksState {
  final String errorMessage;

  const FeaturedBooksFailure(this.errorMessage);
}
class FeaturedBooksLoaded extends FeaturedBooksState {
  final List<BookModel> books;

  const FeaturedBooksLoaded(this.books);
}
