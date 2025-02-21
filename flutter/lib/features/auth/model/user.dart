import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String? avatarUrl;
  final DateTime dateOfBirth;

  const User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.avatarUrl,
      required this.dateOfBirth});

  @override
  List<Object?> get props =>
      [id, firstName, lastName, email, avatarUrl, dateOfBirth];
}
