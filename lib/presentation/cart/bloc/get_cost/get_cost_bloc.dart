import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/cost_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cost_event.dart';
part 'get_cost_state.dart';
part 'get_cost_bloc.freezed.dart';

class GetCostBloc extends Bloc<GetCostEvent, GetCostState> {
  GetCostBloc() : super(const _Initial()) {
    on<_GetCost>(
      (event, emit) async {
        emit(const _Loading());
        print('origin : ${event.origin}');
        print('destination : ${event.destination}');
        print('courier : ${event.courier}');
        final response = await RajaOngkirRemoteDatasource().getCost(
          event.origin,
          event.destination,
          event.courier,
        );
        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_Loaded(r)),
        );
      },
    );
  }
}
