import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userName;
  final String passWord;
  final String name;
  const User(
      {required this.userName, required this.passWord, required this.name});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      UserKeys.userName: userName,
      UserKeys.passWord: passWord,
      UserKeys.name: name
    };
  }

  factory User.fromJson(Map<String, dynamic> map) {
    return User(
        userName: map[UserKeys.userName],
        passWord: map[UserKeys.passWord],
        name: map[UserKeys.name]);
  }

  @override
  List<Object> get props {
    return [name];
  }

  User copyWith({
    String? userName,
    String? passWord,
    String? name,
  }) {
    return User(
        userName: userName ?? this.userName,
        name: name ?? this.name,
        passWord: passWord ?? this.passWord);
  }
}

class UserKeys {
  const UserKeys._();
  static const String userName = 'user_name';
  static const String passWord = 'pass_word';
  static const String name = 'name';
}
