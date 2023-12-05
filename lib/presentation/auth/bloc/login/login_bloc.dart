import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/datasources/auth_remote_datasource.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/requests/login_request_mode.dart';
import 'package:flutter_ecommerce_fic9_new_build/data/models/responses/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      // menggunakan async karena urusannya dengan http
      emit(const _Loading());
      final response =
          await AuthRemoteDataSource().login(event.data!); // request ke server
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
