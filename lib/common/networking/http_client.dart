import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fit_page_assignment/common/networking/network_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpClient {
  static HttpClient? _instance;
  final _connectivity = Connectivity();

  HttpClient._();

  factory HttpClient.instance() {
    if (_instance == null) {
      return HttpClient._();
    } else {
      return _instance!;
    }
  }

  Future<String> get({
    required String url,
    Map<String, dynamic>? parameters,
  }) async {
    try {
      await _checkInternet();
      log('===================================================');
      String param = _makeParameter(parameters);
      log('url: $url$param');

      Uri uri = Uri.parse('$url$param');
      var response = await http.get(uri, headers: _makeHeader());

      if (response.statusCode == 200) {
        log('response(${response.statusCode}: ${response.body}');
        log('===================================================');

        return response.body;
      }
      throw NetworkException(
          message: 'Something went wrong', code: response.statusCode);
    } on NetworkException catch (e) {
      log('Network exception(${e.code}): ${e.message}');
      log('===================================================');
      rethrow;
    } on InternetException catch (e) {
      log('Internet exception: ${e.message}');
      log('===================================================');
      rethrow;
    } catch (e) {
      log('error: ${e.toString()}');
      log('===================================================');
      rethrow;
    }
  }

  Map<String, String> _makeHeader() {
    Map<String, String> header;

    header = {
      'Content-Type': 'application/json',
    };

    log('header: $header');
    return header;
  }

  String _makeParameter(Map<String, dynamic>? param) {
    if (param == null) {
      return '';
    } else {
      String strParam = '';
      for (String key in param.keys) {
        if (strParam.isEmpty) {
          strParam = '?$key=${param[key]}';
        } else {
          strParam = '&$key=${param[key]}';
        }
      }
      return strParam;
    }
  }

  Future<void> _checkInternet() async {
    final connectivityResult = await (_connectivity.checkConnectivity());
    const String message = 'Internet is not working';
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      if (kIsWeb) {
        // try {
        //   var result = await http.get(Uri.parse('www.google.com'));
        //   if (result.statusCode != 200) {
        //     throw InternetException(message: message);
        //   }
        // } catch (e) {
        //   throw InternetException(message: message);
        // }
      } else {
        try {
          final result = await InternetAddress.lookup('www.google.com');
          if (result.isEmpty && result[0].rawAddress.isEmpty) {
            throw InternetException(message: message);
          }
        } on SocketException catch (_) {
          throw InternetException(message: message);
        }
      }
    } else {
      throw InternetException(message: message);
    }
  }
}
