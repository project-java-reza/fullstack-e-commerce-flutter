import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/presentation/cart/widgets/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Loaded([])) { // list kosongan jadi ketika dibuat ini sudah siap menerima data
    on<_Add>((event, emit) {
      final currentState = state as _Loaded;
      // bila product ada di cart, maka tambahkan quantity
      final index = currentState.carts.indexWhere((element) =>
          element.product.id ==
          event.cart.product
              .id); // kenapa ini harus lewat cart karena di event nama variabelnya cart dan di dalam CartModel ada id
      if (index >= 0) {
        // kalau elementnya lebih dari 0 berarti ada productnya
        currentState.carts[index].quantity += 1; // kalau ketemu bertambah 1
        emit(const _Loading());
        emit(_Loaded(currentState.carts));
      } else {
        emit(_Loaded([...currentState.carts, event.cart]));
      }
    });

    on<_Remove>((event, emit) {
      final currentState = state as _Loaded;
      // bila product ada di cart, maka dikurangi quantity
      final index = currentState.carts.indexWhere((element) =>
          element.product.id ==
          event.cart.product.id); // dicari dulu ada ngga productnya
      if (index >= 0) {
        currentState.carts[index].quantity -= 1;
        if (currentState.carts[index].quantity <= 0) {
          currentState.carts.removeAt(index);
        }
        emit(const _Loading());
        emit(_Loaded(currentState.carts));
      }
    });
  }
}
