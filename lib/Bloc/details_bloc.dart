import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled9/Repository/Api/Book/Book.dart';
import 'package:untitled9/Repository/Model_Class/Details_Model.dart';

part 'details_event.dart';
part 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
 late DetailsModel detailsModel;
  BookApi bookApi = BookApi();
  DetailsBloc() : super(DetailsInitial()) {
    on<FetchDetails>((event, emit) async{
      emit(DetailsLoading());
      try{
        detailsModel=await bookApi.getDetails(event.id);
        emit(DetailsLoaded());
      }catch (e){
        print('hello'+e.toString());
        emit(
          DetailsError()
        );
      }
      // TODO: implement event handler
    });
  }
}
