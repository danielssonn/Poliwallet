import 'package:flutter/foundation.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

const url =
    'https://testnets-api.opensea.io/api/v1/collections?offset=0&limit=30';

class OsAssetModel {
  Future<dynamic> getAssetList() async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/opensea'),

      // Send authorization headers to the backend.
      //Fetch data from  https://testnets-api.opensea.io/api/v1/collections?offset=0&limit=10
      headers: {
        'User-Agent':
            'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0',
        'X-Requested-With': 'XMLHttpRequest',
        'Referer': 'http://localhost:3000/opensea',
      },
    );

    final jsonData = jsonDecode(response.body);
    List<dynamic> dynamicResult = jsonData['assets'];
    debugPrint('dynamicResult$dynamicResult');
    return dynamicResult;
  }
}

class OsCollectionsModel {
  Future<dynamic> getCollectionList(String product) async {
    final response = await http.get(
      Uri.parse('http://localhost:3000/opeansea'),
      // Send authorization headers to the backend.
      //Fetch data from  https://testnets-api.opensea.io/api/v1/collections?offset=0&limit=10
      headers: {
        'User-Agent':
            'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0',
        'X-Requested-With': 'XMLHttpRequest',
        'Referer': 'http://localhost:3000/opensea',
      },
    );

    final jsonData = jsonDecode(response.body);
    List<dynamic> dynamicResult = jsonData['collections'];
    debugPrint('dynamicResult$dynamicResult');
    return dynamicResult;
  }

  static Future<List<OS_Collections>> getCollections() async {
    final response = await http.get(
      Uri.parse(
          'https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=8'),
      // Send authorization headers to the backend.
      headers: {
        'User-Agent':
            'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0',
        'X-Requested-With': 'XMLHttpRequest',
        'Referer':
            'https://testnets-api.opensea.io/api/v1/assets?order_direction=desc&offset=0&limit=8',
      },
    );

    final jsonData = jsonDecode(response.body);
    List<dynamic> dynamicResult = jsonData['collections'];
    List<OS_Collections> result = [];
    dynamicResult.forEach((element) {
      result.add(OS_Collections.fromJson(element));
    });
    print(result);
    return result;
  }

  static Future<List<dynamic>> searchCollections(String productName) async {
    ///Get Product list from Xbuy api
    final response = await http.get(
      Uri.parse(
          'https://testnets-api.opensea.io/api/v1/collections?offset=0&limit=30'),
      // Send authorization headers to the backend.
      headers: {
        'User-Agent':
            'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0',
        'X-Requested-With': 'XMLHttpRequest',
        'Referer':
            'https://testnets-api.opensea.io/api/v1/collections?offset=0&limit=30',
      },
    );

    final jsonData = jsonDecode(response.body);
    List<dynamic> dynamicResult =
        jsonData['collections']['primary_asset_contracts'];
    print('dynamicResult$dynamicResult');
    return dynamicResult;
  }
}
