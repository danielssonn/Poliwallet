import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class item_card extends StatelessWidget {
  final String collection_name;
  final String collection_item;
  final String thumbnail;

  const item_card({
    required this.collection_name,
    required this.collection_item,
    required this.thumbnail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Wrap(
        spacing: 10,
        runSpacing: 8,
        children: <Widget>[
          Image.asset(thumbnail, fit: BoxFit.fill),
          Text(
            collection_name,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: blue120,
              fontSize: 12.0,
            ),
          ),
          Text(
            collection_item,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
