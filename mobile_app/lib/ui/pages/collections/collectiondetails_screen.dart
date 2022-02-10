/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/copyseed_screen.dart';
import 'package:poliwallet/ui/pages/sell/listitems_screen.dart';
import 'package:poliwallet/ui/pages/send/sendnft_screen.dart';
import 'package:poliwallet/ui/shared/widgets/accordion.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/blue_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/item_card.dart';
import 'package:poliwallet/utils/constants.dart';

class CollectionItemScreen extends StatefulWidget {
  static final String id = 'collectionSummaryScreen';
  @override
  State<StatefulWidget> createState() {
    return _CollectionItemScreenState();
  }
}

enum MarketPlace { opensea, rarible }
MarketPlace? _marketPlace = MarketPlace.opensea;

class _CollectionItemScreenState extends State<CollectionItemScreen> {
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
          img_link: null,
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
              elevation: 3,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.height * .90,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(
                  10.0,
                ),

                ///Add contents here
                child: SingleChildScrollView(
                  padding: new EdgeInsets.all(8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                          elevation: 0,
                          child: Image.asset(
                            'assets/collections/axie-237196.png',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Asset Name #237196',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  color: iconBackgroundColor,
                                )
                              ],
                            ),
                            Divider(
                              color: dividerColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Last sale price',
                                  style: TextStyle(color: subTextColor),
                                ),
                                Text(
                                  'Floor price',
                                  style: TextStyle(color: subTextColor),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '0.6 ETH',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                ),
                                Text(
                                  '1.15 ETH',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20.0),
                                ),
                              ],
                            ),
                            Divider(
                              color: dividerColor,
                            ),
                            Accordion(
                                title: 'Description',
                                content: Text(
                                    'Axies are digital pets, each Axie has its own distinct look and attributes')),
                            Accordion(
                                title: 'Properties',
                                content: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text('MOVE'),
                                              Text(
                                                'Branch Flap',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text('3% of this trait'),
                                            ],
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Text('MOVE'),
                                              Text(
                                                'Bug Noise',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text('3% of this trait'),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text('MOVE'),
                                              Text(
                                                'Branch Flap',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text('3% of this trait'),
                                            ],
                                          ),
                                          Column(
                                            children: <Widget>[
                                              Text('MOVE'),
                                              Text(
                                                'Bug Noise',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text('3% of this trait'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            Accordion(
                                title: 'About Axie Infinity',
                                content: Text(
                                    'Axies are fierce creatures that love to battle, build, and hunt for treasure! Build up a collection and use them across an ever expanding universe of games! Axie players can earn tokens such as DAI, KNC, and SLP which can be converted easily to ETH!')),
                            Accordion(
                                title: 'Details',
                                content: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Contract Address'),
                                        Text(
                                          '0xf5b0..cb9d',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Token ID'),
                                        Text(
                                          '235332',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Token Standard'),
                                        Text(
                                          'ERC-20',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Blockchain'),
                                        Text(
                                          'Ethereum',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: ButtonOutlined(
                        btn_title: 'Send',
                        icon: Icons.send,
                        color: primaryColor,
                        onPress: () {
                          Navigator.of(context).push(createRoute(SendNFTScreen(
                            asset_image_url: 'NAME',
                            asset_name: 'AXIE',
                          )));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ButtonSolid(
                        btn_title: 'Sell',
                        icon: Icons.sell,
                        color: primaryColor,
                        onPress: () {
                          ///show pop-up
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  scrollable: true,
                                  title: Text(
                                    'Select Market Place',
                                    textAlign: TextAlign.center,
                                  ),
                                  content: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Form(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          RadioListTile<MarketPlace>(
                                            value: MarketPlace.opensea,
                                            groupValue: _marketPlace,
                                            title: Image.asset(
                                                'assets/common/opensea-logo.png'),
                                            onChanged: (MarketPlace? value) {
                                              setState(() {
                                                _marketPlace = value;
                                                print(
                                                    'marketplace$_marketPlace');
                                              });
                                            },
                                            // Remaining Code
                                          ),
                                          RadioListTile<MarketPlace>(
                                            value: MarketPlace.rarible,
                                            groupValue: _marketPlace,
                                            title: Image.asset(
                                                'assets/common/rarible-logo.png'),
                                            onChanged: (MarketPlace? value) {
                                              setState(() {
                                                _marketPlace = value;
                                                print(
                                                    'marketplace$_marketPlace');
                                              });
                                            },
                                            // Remaining Code
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: ButtonSolid(
                                        btn_title: 'Continue',
                                        color: primaryColor,
                                        onPress: () {
                                          //pop navigator

                                          Navigator.of(context).push(
                                              createRoute(
                                                  ListItemsForSaleScreen()));
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
