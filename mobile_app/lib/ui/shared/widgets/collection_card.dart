/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the outline button

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class collection_card extends StatelessWidget {
  const collection_card({
    Key? key,
    required this.index,
    required this.collectionName,
    required this.collectionThumbnail,
    required this.items,
  }) : super(key: key);

  final int index;
  final String collectionName;
  final String collectionThumbnail;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (index == 1 ? 45.0 * index : 60.0 * index),
        left: 15,
        right: 15,
        child: Container(
          child: SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.all(8.0),
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 64, 101, 0.15),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 0.2), // changes position of shadow
                  ),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: Card(
                child: ListTile(
                  title: Text(collectionName),
                  leading: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(collectionThumbnail),
                    backgroundColor: primaryColor,
                  ),
                  trailing: Text("($items)"),
                  onTap: () {
                    print('Card Clicked');
                  },
                ),
              ),
            ),
          )),
        ));
  }
}
