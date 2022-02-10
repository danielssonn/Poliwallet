/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the home app bar

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/accounts/accounts_screen.dart';
import 'package:poliwallet/ui/pages/addnewitem_screen.dart';
import 'package:poliwallet/ui/pages/addtrade_screen.dart';
import 'package:poliwallet/utils/constants.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';

class homeAppBar extends StatelessWidget {
  const homeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      leading: Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      title: Center(
        child: GestureDetector(
          onTap: () {
            print('Account is pressed');
            Navigator.of(context).push(createRoute(AccountSettingsScreen()));
            // _offsetPopup();
          },
          child: new Text(
            'Account 1',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      elevation: 0.0,
      actions: [
        Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 10))
      ],
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF69ADF4),
              Color(0xFF2D83E8),
            ],
          ),
        ),
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 15.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                '10 ETH',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '........',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '\$21,880.70',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.add,
                                color: primaryTextColor,
                              ),
                              label: Text('Add',
                                  style: TextStyle(
                                    color: primaryTextColor,
                                  )),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(createRoute(AddNewItemScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  primary: Colors.white,
                                  textStyle: TextStyle(
                                    color: primaryColor,
                                  ),
                                  shape: StadiumBorder()),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: ElevatedButton.icon(
                              icon: Icon(
                                Icons.multiple_stop,
                                color: primaryTextColor,
                              ),
                              label: Text('Trade',
                                  style: TextStyle(
                                    color: primaryTextColor,
                                  )),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(createRoute(AddNewTradeScreen()));
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0.0,
                                  primary: Colors.white,
                                  textStyle: TextStyle(
                                    color: primaryColor,
                                  ),
                                  shape: StadiumBorder()),
                            ),
                          ),
                        ],
                      )
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

  Widget _offsetPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Text(
                "Flutter Open",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Text(
                "Flutter Tutorial",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
            ),
          ],
      icon: Container(
        height: 300.0,
        width: double.infinity,
        decoration: ShapeDecoration(
            color: Colors.blue,
            shape: StadiumBorder(
              side: BorderSide(color: Colors.white, width: 2),
            )),
        child: Icon(Icons.menu,
            color: Colors.white), // <-- You can give your icon here
      ));
}
