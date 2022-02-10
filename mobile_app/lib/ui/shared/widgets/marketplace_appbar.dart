/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the home app bar

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/accounts/accounts_screen.dart';
import 'package:poliwallet/ui/pages/addnewitem_screen.dart';
import 'package:poliwallet/ui/pages/addtrade_screen.dart';
import 'package:poliwallet/utils/constants.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';

class MarketPlaceAppBar extends StatelessWidget {
  const MarketPlaceAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      leading: BackButton(color: Colors.black),
      title: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(createRoute(AccountSettingsScreen()));
            // _offsetPopup();
          },
          child: new Text(
            'Account 1',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      actions: [
        Icon(
          Icons.more_horiz,
          color: Colors.black,
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10))
      ],
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Total Assets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
