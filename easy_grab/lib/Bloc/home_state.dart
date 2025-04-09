import 'package:easy_grab/models/service_models.dart';

abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<ServiceModel> services;
  HomeLoaded(this.services);
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}
