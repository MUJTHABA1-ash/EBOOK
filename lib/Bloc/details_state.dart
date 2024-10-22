part of 'details_bloc.dart';

@immutable
sealed class DetailsState {}

final class DetailsInitial extends DetailsState {}
class DetailsLoading extends DetailsState {}
class DetailsLoaded extends DetailsState {}
class DetailsError extends DetailsState {}