import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/register_request_model.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

// ini BLOC nya sudah siap tinggal di daftarkan di main.dart
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading()); // emit init cara mengganti state
      final response = await AuthRemoteDataSource().register(event.data!);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      ); // l = left(error), r = right (success)
    });
  }
}
