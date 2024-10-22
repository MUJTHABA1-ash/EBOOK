
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled9/Repository/Api/Book/Book.dart';
import 'package:untitled9/Repository/Model_Class/Book_Model.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
late List<BookModel> bookModel;
BookApi bookApi = BookApi();
  BookBloc() : super(BookInitial()) {
    on<BookEvent>((event, emit) async{
      emit (BookLoading());
      try{
        bookModel = await bookApi.getBook();
        emit (BookLoaded());
        }catch (e){
        emit(
          BookError(),
        );

        print(e.toString());
      }
      }
      // TODO: implement event handler
    );
  }
}
