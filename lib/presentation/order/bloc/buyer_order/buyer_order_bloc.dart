import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/order_remote_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/buyer_order_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'buyer_order_event.dart';
part 'buyer_order_state.dart';
part 'buyer_order_bloc.freezed.dart';

class BuyerOrderBloc extends Bloc<BuyerOrderEvent, BuyerOrderState> {
  BuyerOrderBloc() : super(const _Initial()) {
    on<_GetBuyerOrder>((event, emit) async {
      emit(const _Loading());
      final response = await OrderRemoteDataSource().getOrderByBuyerId();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data)),
      );
    });
  }
}
