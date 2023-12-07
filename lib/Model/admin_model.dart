import 'dart:convert';

import 'package:beed_mobile/Model/app_user_model.dart';

class AdminModel {
  int? id;
  AppUserModel user;

  AdminModel({
    this.id,
    required this.user
  });
}