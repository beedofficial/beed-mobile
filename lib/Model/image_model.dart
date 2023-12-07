import 'dart:convert';

import 'package:beed_mobile/Model/auction_model.dart';

class ImageModel {
  int? id;
  AuctionModel auction;
  List<int> imageData;

  ImageModel({
    this.id,
    required this.auction,
    required this.imageData,
  });
}
