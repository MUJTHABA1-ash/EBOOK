part of 'details_bloc.dart';

@immutable
sealed class DetailsEvent {}
class FetchDetails extends DetailsEvent {
  late final id;
  FetchDetails({required this.id});
}
