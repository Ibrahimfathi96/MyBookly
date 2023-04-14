part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailure(this.errorMessage);
}

class NewestBooksLoaded extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksLoaded(this.books);
}
