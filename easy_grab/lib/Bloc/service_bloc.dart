import 'package:easy_grab/models/service_models.dart';
import 'package:easy_grab/repositories/serviceRepositries.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// EVENTS
abstract class ServiceEvent {}

class FetchServicesEvent extends ServiceEvent {}

// STATES
abstract class ServiceState {}

class ServiceInitial extends ServiceState {}

class ServiceLoading extends ServiceState {}

class ServiceLoaded extends ServiceState {
  final List<ServiceModel> services;
  ServiceLoaded(this.services);
}

class ServiceError extends ServiceState {
  final String message;
  ServiceError(this.message);
}

// BLOC CLASS
class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final ServiceRepository serviceRepository;

  ServiceBloc(this.serviceRepository) : super(ServiceInitial()) {
    on<FetchServicesEvent>(_onFetchServices);
  }

  Future<void> _onFetchServices(
      FetchServicesEvent event, Emitter<ServiceState> emit) async {
    emit(ServiceLoading());
    try {
      final services = await serviceRepository.fetchServices();
      emit(ServiceLoaded(services));
    } catch (e) {
      emit(ServiceError("Failed to load services"));
    }
  }
}
