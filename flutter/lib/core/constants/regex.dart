class Regex {
  static const String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String password = r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).{6,}$';
}
