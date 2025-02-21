import 'package:formz/formz.dart';

enum StringInputError { empty, invalid }

class StringInput extends FormzInput<String, StringInputError> {
  final bool isRequired;
  final String? regexSource;

  const StringInput.pure({this.isRequired = true, this.regexSource})
      : super.pure('');

  const StringInput.dirty({
    String value = '',
    bool? isRequired,
    this.regexSource,
  })  : isRequired = isRequired ?? true,
        super.dirty(value);

  factory StringInput.toDirty(
    StringInput previous, {
    String? value,
  }) {
    return StringInput.dirty(
      value: value ?? previous.value,
      isRequired: previous.isRequired,
      regexSource: previous.regexSource,
    );
  }

  @override
  StringInputError? validator(String value) {
    if (!isRequired) {
      return null;
    }
    if (regexSource != null && RegExp(regexSource!).hasMatch(this.value)) {
      return StringInputError.invalid;
    }
    return value.isEmpty ? StringInputError.empty : null;
  }
}
