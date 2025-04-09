import 'package:easy_grab/repositories/serviceRepositries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_event.dart';
import 'home_state.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ServiceRepository repository;

  HomeBloc(this.repository) : super(HomeLoading()) {
    on<LoadHomeData>((event, emit) async {
      try {
        final services = await repository.fetchServices();
        emit(HomeLoaded(services));
      } catch (e) {
        emit(HomeError("Failed to load services"));
      }
    });
  }
}
