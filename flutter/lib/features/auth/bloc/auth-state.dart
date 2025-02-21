import 'package:alphax/features/auth/formz/sign_in_form.dart';
import 'package:alphax/features/auth/model/user.dart';
import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final User? user;
  final SignInForm signInForm;

  const AuthState({this.user, this.signInForm = const SignInForm()});

  @override
  List<Object?> get props => [user, signInForm];

  AuthState copyWith({User? user, SignInForm? signInForm}) => AuthState(
      user: user ?? this.user, signInForm: signInForm ?? this.signInForm);
}
