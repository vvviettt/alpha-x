import 'package:alphax/common/formz-input/string-input.dart';
import 'package:alphax/core/constants/regex.dart';
import 'package:formz/formz.dart';

class SignInForm with FormzMixin {
  final StringInput email;
  final StringInput password;

  const SignInForm(
      {this.email = const StringInput.pure(regexSource: Regex.emailRegex),
      this.password = const StringInput.pure(regexSource: Regex.password)});

  @override
  List<FormzInput> get inputs => [email, password];

  SignInForm copyWith({String? email, String? password}) {
    return SignInForm(
      email: email != null
          ? StringInput.toDirty(this.email, value: email)
          : this.email,
      password: password != null
          ? StringInput.toDirty(this.password, value: password)
          : this.password,
    );
  }
}
