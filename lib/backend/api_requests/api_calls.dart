import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarCall {
  static Future<ApiCallResponse> call({
    String? buscar = 'Villa Maria',
  }) async {
    final ffApiRequestBody = '''
{
  "palabra_clave": "$buscar"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar',
      apiUrl:
          'https://plsgjvaiuudddbdmqzyq.supabase.co/rest/v1/rpc/buscar_por_actividad',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsc2dqdmFpdXVkZGRiZG1xenlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0OTg3NDEsImV4cCI6MjAzMjA3NDc0MX0.ApBLabCIZ51P4V3SYgJWvNPLm6uWaQCp-xZH-UDZ_XA',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBsc2dqdmFpdXVkZGRiZG1xenlxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0OTg3NDEsImV4cCI6MjAzMjA3NDc0MX0.ApBLabCIZ51P4V3SYgJWvNPLm6uWaQCp-xZH-UDZ_XA',
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

  static List? fecha(dynamic response) => getJsonField(
        response,
        r'''$[:].fecha''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? observacion(dynamic response) => (getJsonField(
        response,
        r'''$[:].observacion''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? cantadultos(dynamic response) => (getJsonField(
        response,
        r'''$[:].cant_adultos''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? cantnnya(dynamic response) => (getJsonField(
        response,
        r'''$[:].cant_nnya''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? actividad(dynamic response) => (getJsonField(
        response,
        r'''$[:].actividad''',
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
