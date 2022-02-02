/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the home app bar

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

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
        child: new Text(
          'Account 1',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w700),
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
                  padding: const EdgeInsets.all(25),
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
                      SizedBox(
                        height: 15.0,
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
                              onPressed: () {},
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
                              onPressed: () {},
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
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: const Color(0xFF4EAAFF),
          ),
          child: TabBar(
              indicatorColor: primaryTextColor,
              labelColor: primaryTextColor,
              unselectedLabelColor: const Color(0xFFF6F9FF),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: const Color(0xFFF6F9FF),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
              tabs: [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Collections",
                    ),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Certificates",
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
