import 'package:flutter/foundation.dart';
import 'package:poliwallet/core/models/rr_collections.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class RRAssetModel {
  Future<dynamic> getRRAssetList() async {
    final response = await http.get(
      Uri.parse('http://192.168.1.6:3000/rarible'),
      // Send authorization headers to the backend.
      //Fetch data from rarible https://ethereum-api.rarible.org/v0.1/nft/items/all?size=3
      headers: {
        'User-Agent':
            'Mozilla/5.0 (X11; Linux x86_64; rv:73.0) Gecko/20100101 Firefox/73.0',
        'X-Requested-With': 'XMLHttpRequest',
        'Referer': 'http://192.168.1.6:3000/rarible',
      },
    );

    final jsonData = jsonDecode(response.body);
    List<dynamic> dynamicResult = jsonData['meta'];
    debugPrint('RaribleData$dynamicResult');
    return dynamicResult;
  }
}
