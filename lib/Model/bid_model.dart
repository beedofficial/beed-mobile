import 'dart:convert';

import 'package:beed_mobile/Model/app_user_model.dart';
import 'package:beed_mobile/Model/auction_model.dart';

class BidModel {
  int? id;
  AuctionModel auction;
  AppUserModel bidder;
  double amount;
  DateTime? date;

  BidModel({
    this.id,
    required this.auction,
    required this.bidder,
    required this.amount,
    this.date,
  });
}