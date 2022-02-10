/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/copyseed_screen.dart';
import 'package:poliwallet/ui/pages/collections/collectiondetails_screen.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/pages/loadcollection_screen.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/blue_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/collection_card.dart';
import 'package:poliwallet/ui/shared/widgets/home_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/item_card.dart';
import 'package:poliwallet/ui/shared/widgets/poap_badge.dart';
import 'package:poliwallet/ui/shared/widgets/utitlity_card.dart';
import 'package:poliwallet/utils/constants.dart';

class CollectionSummaryScreen extends StatefulWidget {
  static final String id = 'collectionSummaryScreen';
  @override
  State<StatefulWidget> createState() {
    return _CollectionSummaryScreenState();
  }
}

class _CollectionSummaryScreenState extends State<CollectionSummaryScreen> {
  OsAssetModel _assetModel = OsAssetModel();
  late String productName;
  int totalItems = 0;
  var resultList = [];
  List<OS_Collections> _osCollectionResult = [];
  TextEditingController controller = new TextEditingController();
  int _selectedIndex = 0;

  // Get json result and convert it to model. Then add
  Future<Null> getCollectionDEtails(String productName) async {
    resultList = await _assetModel.getAssetList();

    setState(() {
      resultList.forEach((element) {
        _osCollectionResult.add(OS_Collections.fromJson(element));
      });
      print('_osCollectionResult $_osCollectionResult');
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: surfaceColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: blueAppBar(
          appbar_title: 'Axie Infinity',
          img_link: 'assets/collections/collections-1.png',
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              color: Color(0xFF2D83E8),
              width: MediaQuery.of(context).size.width,
              height: 150,
            ),
          ),
          Positioned(
            top: 30,
            left: 15,
            right: 15,
            child: Card(
              elevation: 8,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.height * .90,
                height: MediaQuery.of(context).size.height * .70,
                padding: EdgeInsets.all(
                  20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Total assets',
                        style:
                            TextStyle(fontSize: 18.0, color: primaryTextColor),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            '2 ETH',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: primaryTextColor,
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
                            '\$4,000.00',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: primaryTextColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('item clicked! 1');
                              Navigator.of(context)
                                  .popAndPushNamed(CollectionItemScreen.id);
                            },
                            child: item_card(
                              collection_name: 'Axie Infinity',
                              collection_item: 'Axie #237196',
                              thumbnail: 'assets/collections/axie-237196.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(CollectionItemScreen.id);
                            },
                            child: item_card(
                              collection_name: 'Axie Infinity',
                              collection_item: 'Axie #237181',
                              thumbnail: 'assets/collections/axie-237181.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(CollectionItemScreen.id);
                            },
                            child: item_card(
                              collection_name: 'Axie Infinity',
                              collection_item: 'Axie #23757',
                              thumbnail: 'assets/collections/axie-237196.png',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .popAndPushNamed(CollectionItemScreen.id);
                            },
                            child: item_card(
                              collection_name: 'Axie Infinity',
                              collection_item: 'Axie #23723',
                              thumbnail: 'assets/collections/axie-237181.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(createRoute(LoadCollectionScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Browse Market',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




/*bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 50,
          decoration: BoxDecoration(color: surfaceColor),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Browse Market',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.chevron_right),
                  onPressed: () {
                    print('display market');
                  },
                )
              ],
            ),
          ),
        ),
      ),*/