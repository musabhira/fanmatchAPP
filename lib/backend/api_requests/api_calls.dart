import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PremierLeagueCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'premier league ',
      apiUrl:
          'https://heisenbug-premier-league-live-scores-v1.p.rapidapi.com/api/premierleague',
      callType: ApiCallType.GET,
      headers: {
        'x-rapidapi-key': '0faf42c480msh29a83a7cd1f39bbp1ac38bjsnf36e325b5455',
        'x-rapidapi-host':
            'heisenbug-premier-league-live-scores-v1.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LeagueCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'league',
      apiUrl:
          'https://soccer.sportmonks.com/api/v2.0/teams/season/18334?api_token=Vdtki6XCpV9kRSCNUgGxIOT8MKCONoMJvVdUTLi4dFSehrkK5Wiepfv3iX5D',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LaligaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'laliga',
      apiUrl:
          'https://site.api.espn.com/apis/site/v2/sports/soccer/esp.1/teams?season=2024',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? logos(dynamic response) => getJsonField(
        response,
        r'''$.sports[:].leagues[:].teams[:].team.logos''',
        true,
      ) as List?;
  static List<String>? logo12(dynamic response) => (getJsonField(
        response,
        r'''$.sports[:].leagues[:].teams[:].team.logos[:].href''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$..href''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.sports[0].leagues[0].teams[*].team.logos[*].href''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? names(dynamic response) => (getJsonField(
        response,
        r'''$..displayName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? hh(dynamic response) => (getJsonField(
        response,
        r'''$.sports[0].leagues[0].teams[4].team.logos[0].href''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
