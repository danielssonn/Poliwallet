/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for Utility Card

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class utility_card extends StatelessWidget {
  final String utility_name;
  final String utility_address;

  const utility_card({
    Key? key,
    required this.utility_name,
    required this.utility_address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(18.0),
        dense: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              utility_name, //'GEMEX Card'
              style: TextStyle(color: subtextColor, fontSize: 12.0),
            ),
            Text(utility_address, //'PLATINUM GAMEX 0000 0000 0098 0000'
                style: TextStyle(color: Colors.black, fontSize: 18.0))
          ],
        ),
        leading: CircleAvatar(
          radius: 30.0,
          child: ClipOval(
            child: Image.asset(
              'assets/badges/gamex-ico.png',
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        onTap: () {
          print('Card Clicked');
        },
      ),
    );
  }
}
