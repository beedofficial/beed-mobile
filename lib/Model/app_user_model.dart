import 'dart:convert';

AppUserModel appUserModelJson(String str) =>
    AppUserModel.fromJson(json.decode(str));

String appUserModelToJson(AppUserModel data) => json.encode(data.toJson());

class AppUserModel {
  int? id;
  String username;
  String name;
  String surname;
  double rate;
  String mail;
  String phone;
  String salt;
  String encryptedpassword;

  AppUserModel({
      this.id,
      required this.username,
      required this.name,
      required this.surname,
      required this.rate,
      required this.mail,
      required this.phone,
      required this.salt,
      required this.encryptedpassword});

  factory AppUserModel.fromJson(Map<String, dynamic> json) => AppUserModel(
      username: json["username"],
      name: json["name"],
      surname: json["surname"],
      rate: json["rate"],
      mail: json["mail"],
      phone: json["phone"],
      salt: json["salt"],
      encryptedpassword: json["encrypted_password"],
      id: json["id"]);

  Map<String, dynamic> toJson() => {
      "username": username,
      "name": name,
      "surname": surname,
      "rate" : rate,
      "mail": mail,
      "phone": phone,
      "salt": salt,
      "encrypted_password": encryptedpassword,
  };
}