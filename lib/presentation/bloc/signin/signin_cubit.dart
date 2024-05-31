import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:olearis_test/presentation/bloc/signin/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(const SigninState());

  void onChangeLogin(String login) {
    emit(state.copyWith(login: login));
  }

  void onChangePassword(String password) {
    emit(state.copyWith(password: password));
  }

  bool validateInputs() {
    if (state.login.isEmpty || state.password.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
