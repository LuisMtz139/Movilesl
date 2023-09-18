import '../../domain/entities/User.dart';

class UserModel extends User {
  UserModel({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phoneNumber,
  }) : super(
    email: email,
    password: password,
    confirmPassword: confirmPassword,
    name: name,
    phoneNumber: phoneNumber,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['password'],
      confirmPassword: json['confirmPassword'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
    );
  }

  factory UserModel.fromEntity(User user) {
    return UserModel(
      email: user.email,
      password: user.password,
      confirmPassword: user.confirmPassword,
      name: user.name,
      phoneNumber: user.phoneNumber,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'name': name,
      'phoneNumber': phoneNumber,
    };
  }

  User toEntity() {
    return User(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      name: name,
      phoneNumber: phoneNumber,
    );
  }
}
