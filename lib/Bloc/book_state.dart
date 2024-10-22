part of 'book_bloc.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}
class BookLoading extends BookState {}
class BookError extends BookState {}
class BookLoaded extends BookState {}
