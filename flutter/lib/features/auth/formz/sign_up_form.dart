import 'package:alphax/common/formz-input/string-input.dart';
import 'package:alphax/core/constants/regex.dart';
import 'package:formz/formz.dart';

class SignupForm with FormzMixin {
  final StringInput email;
  final StringInput firstName;
  final StringInput lastName;
  final StringInput password;
  final StringInput rePassword;

  const SignupForm(
      {this.email = const StringInput.pure(regexSource: Regex.emailRegex),
      this.password = const StringInput.pure(regexSource: Regex.password),
      this.firstName = const StringInput.pure(isRequired: true),
      this.lastName = const StringInput.pure(isRequired: true),
      this.rePassword = const StringInput.pure(isRequired: true)});

  @override
  List<FormzInput> get inputs => [email, password];

  SignupForm copyWith({String? email, String? password}) {
    return SignupForm(
      email: email != null
          ? StringInput.toDirty(this.email, value: email)
          : this.email,
      password: password != null
          ? StringInput.toDirty(this.password, value: password)
          : this.password,
    );
  }
}
