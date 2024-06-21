import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initial()) {
    on<Started>((event, emit) {
      // Handle initial event if necessary
    });

    on<EventLogin>((event, emit) async {
      emit(const LoginState.loading());
      try {
        // Simulate a login process
        await Future.delayed(const Duration(seconds: 2));
        if(event.username == "username" && event.password == "password") {
          // If login is successful
        emit(const LoginState.success());
        }
        else{
          emit(const LoginState.failure(error: "Invalid UserName or Password"));
        }
      } catch (error) {
        // If login fails
        emit(LoginState.failure(error: error.toString()));
      }
    });
  }
}
