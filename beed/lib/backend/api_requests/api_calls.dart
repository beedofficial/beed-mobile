import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetFeedPageAuctionsCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Feed Page Auctions',
      apiUrl: 'http://34.229.152.171:8080/api/auction/get-feed-page-auctions',
      callType: ApiCallType.GET,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? auctionList(dynamic response) => getJsonField(
        response,
        r'''$.feedPageAuctionList''',
        true,
      ) as List?;
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.feedPageAuctionList[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetProfileHistoryAuctionsCall {
  static Future<ApiCallResponse> call({
    int? page = 0,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile History Auctions',
      apiUrl:
          'http://34.229.152.171:8080/api/auction/get-profile-history-auctions',
      callType: ApiCallType.GET,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? auctionList(dynamic response) => getJsonField(
        response,
        r'''$.profileHistoryAuctionList''',
        true,
      ) as List?;
}

class GetProfileHistoryBidsCall {
  static Future<ApiCallResponse> call({
    int? page = 0,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Profile History Bids',
      apiUrl: 'http://34.229.152.171:8080/api/bid/get-profile-history-bids',
      callType: ApiCallType.GET,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? bidlist(dynamic response) => getJsonField(
        response,
        r'''$.profileHistoryBidList''',
        true,
      ) as List?;
}

class POSTRegisterCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? name = '',
    String? surname = '',
    String? mail = '',
    String? phone = '',
    String? password = '',
    String? deviceToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "name": "${name}",
  "surname": "${surname}",
  "profilePhotoUrl": "https://firebasestorage.googleapis.com/v0/b/beed-final.appspot.com/o/default-user-icon.jpg.webp?alt=media&token=3b010164-59a8-4bcf-ac03-31fda623b9aa",
  "phone": "${phone}",
  "mail": "${mail}",
  "password": "${password}",
  "deviceToken": "${deviceToken}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Register',
      apiUrl: 'http://34.229.152.171:8080/api/auth/register',
      callType: ApiCallType.POST,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTLoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Login',
      apiUrl: 'http://34.229.152.171:8080/api/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserInfoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Info',
      apiUrl: 'http://34.229.152.171:8080/api/appuser/get-user-info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Content-Type': 'application/json',
        'Bypass-Tunnel-Reminder': 'dfgdfg',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHotAuctionsCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Hot Auctions ',
      apiUrl:
          'http://34.229.152.171:8080/api/auction/get-hot-auctions-page-auctions',
      callType: ApiCallType.GET,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? hotAuctionsList(dynamic response) => getJsonField(
        response,
        r'''$.hotAuctionsPageAuctionList''',
        true,
      ) as List?;
  static List? title(dynamic response) => getJsonField(
        response,
        r'''$.hotAuctionsPageAuctionList[:].title''',
        true,
      ) as List?;
}

class CreateAuctionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? title = '',
    String? description = '',
    double? minStartBid,
    String? imageUrl = '',
    int? durationInfo,
  }) async {
    final ffApiRequestBody = '''
{
  "title": "${title}",
  "description": "${description}",
  "minStartBid": ${minStartBid},
  "imageUrl": "${imageUrl}",
  "durationInfo": ${durationInfo}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Auction',
      apiUrl: 'http://34.229.152.171:8080/api/auction/create-auction',
      callType: ApiCallType.POST,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAuctionViewCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Auction View ',
      apiUrl: 'http://34.229.152.171:8080/api/auction/get-auction-info-view',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserInfoCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? mail = '',
    String? phone = '',
    String? surname = '',
    String? authToken = '',
    String? profilePhotoUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "surname": "${surname}",
  "phone": "${phone}",
  "mail": "${mail}",
  "profilePhotoUrl": "${profilePhotoUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User Info',
      apiUrl: 'http://34.229.152.171:8080/api/appuser/update-own-user-info',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
        'Bypass-Tunnel-Reminder': 'dfgdfg',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateBidForAnAuctionCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? bidAmount,
    int? auctionId,
  }) async {
    final ffApiRequestBody = '''
{
  "auctionId": ${auctionId},
  "bidAmount": ${bidAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Bid for an Auction',
      apiUrl: 'http://34.229.152.171:8080/api/bid/create-bid',
      callType: ApiCallType.POST,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetWinnerAndAuctioneerCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Winner and Auctioneer',
      apiUrl:
          'http://34.229.152.171:8080/api/auction/get-winner-and-auctioneer',
      callType: ApiCallType.GET,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? id,
    double? rate,
  }) async {
    final ffApiRequestBody = '''
{
  "rate": ${rate},
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Rate',
      apiUrl: 'http://34.229.152.171:8080/api/appuser/update-user-rate',
      callType: ApiCallType.PUT,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTCreateBidCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    int? auctionId,
    int? bidAmount,
    int? auctioneerId,
    int? minStartBid,
  }) async {
    final ffApiRequestBody = '''
{
  "auctionId": ${auctionId},
  "bidAmount": ${bidAmount},
  "minStartBid": ${minStartBid},
  "auctioneerId": ${auctioneerId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST Create Bid',
      apiUrl: 'http://34.229.152.171:8080/api/bid/create-bid',
      callType: ApiCallType.POST,
      headers: {
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIsAuctionEndCall {
  static Future<ApiCallResponse> call({
    int? id,
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Is Auction End',
      apiUrl: 'http://34.229.152.171:8080/api/auction/end-date',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
        'Bypass-Tunnel-Reminder': 'dfgdfg',
        'Content-Type': 'application/json',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NotifyAuctioneerAPICall {
  static Future<ApiCallResponse> call({
    String? auctionTitle = '',
    int? bidAmount,
    int? auctioneerId,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "auctionTitle": "${auctionTitle}",
  "bidAmount": ${bidAmount},
  "auctioneerId": ${auctioneerId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Notify Auctioneer API',
      apiUrl: 'http://34.229.152.171:8080/api/notify/auctioneer-for-new-bid',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class NotifyPreviousBidderCall {
  static Future<ApiCallResponse> call({
    String? auctionTitle = '',
    int? bidAmount,
    int? previousBidderId,
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "auctionTitle": "${auctionTitle}",
  "bidAmount": ${bidAmount},
  "previousBidderId": ${previousBidderId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Notify Previous Bidder',
      apiUrl: 'http://34.229.152.171:8080/api/notify/previous-bidder',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
