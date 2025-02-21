import 'package:alphax/features/auth/bloc/auth-state.dart';
import 'package:alphax/features/auth/repository/auth.repository.dart';
import 'package:bloc/bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepository}) : super(AuthState());
  final AuthRepository authRepository;

  changeLoginForm({String? email, String? password}) {
    emit(state.copyWith(
        signInForm:
            state.signInForm.copyWith(email: email, password: password)));
  }
}
