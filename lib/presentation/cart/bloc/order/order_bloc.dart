import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/order_request_model.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/order_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(_Initial()) {
    on<OrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
