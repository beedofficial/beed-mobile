import 'dart:convert';

import 'package:beed_mobile/Model/app_user_model.dart';
import 'package:beed_mobile/Model/image_model.dart';

class AuctionModel {
  int? id;
  String title;
  String description;
  AppUserModel auctioneer;
  Set<ImageModel> images;
  DateTime startDate;
  DateTime endDate;
  double minStartBid;

  AuctionModel({
  this.id,
  required this.title,
  required this.description,
  required this.auctioneer,
  required this.images,
  required this.startDate,
  required this.endDate,
  required this.minStartBid,
  });

  }