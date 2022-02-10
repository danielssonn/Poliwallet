/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/loadcollection_screen.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/collection_card.dart';
import 'package:poliwallet/ui/shared/widgets/home_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/poap_badge.dart';
import 'package:poliwallet/ui/shared/widgets/utitlity_card.dart';
import 'package:poliwallet/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'homeScreen';
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
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

  final _pageOptions = [nft_assets_page(), coins_page()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(190.0),
        child: homeAppBar(),
      ),
      body: _pageOptions[_selectedIndex],
      floatingActionButton: new FloatingActionButton(
        backgroundColor: iconBackgroundColor,
        onPressed: () {
          Navigator.of(context).push(createRoute(LoadCollectionScreen()));
        },
        child: new Icon(
          Icons.store,
          color: Colors.white,
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 0.25),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.collections_outlined),
                label: 'NFT Assets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.money),
                label: 'Coins',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

/// NFT Assets Page
class nft_assets_page extends StatelessWidget {
  const nft_assets_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF2D83E8),
                        ),
                        child: TabBar(
                          labelPadding: EdgeInsets.symmetric(horizontal: 0.0),
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
                          tabs: [
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Badges",
                                ),
                              ),
                            ),
                            Tab(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Collections",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 480, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: Center(
                                child: certificates_tab(),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: collections_tab(),
                              ),
                            ),
                          ]))
                    ])),
          ]),
    );
  }
}

class certificates_tab extends StatelessWidget {
  const certificates_tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 120,
              width: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/common/profile-photo.png')),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: lightBlueColor,
            ),
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Text('0x43988..........823a57C'),
                ),
                Expanded(
                  child: Icon(
                    Icons.copy,
                    color: iconBackgroundColor,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.share,
                    color: iconBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                              labelColor: primaryColor,
                              unselectedLabelColor: Colors.black,
                              tabs: [Tab(text: 'POAP'), Tab(text: 'Utility')]),
                        ),
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.5))),
                          child: TabBarView(
                            children: <Widget>[
                              Container(
                                decoration: new BoxDecoration(
                                  color: lightBlueColor,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          poap_badge(
                                            img_url:
                                                'assets/collections/poap-1.png',
                                          ),
                                          poap_badge(
                                            img_url:
                                                'assets/collections/poap-2.png',
                                          ),
                                          poap_badge(
                                            img_url:
                                                'assets/collections/poap-3.png',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: new BoxDecoration(
                                  color: lightBlueColor,
                                ),
                                child: utility_card(
                                  utility_name: 'GEMEX Card',
                                  utility_address:
                                      'PLATINUM GAMEX 0000 0000 0098 0000',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class collections_tab extends StatefulWidget {
  const collections_tab({
    Key? key,
  }) : super(key: key);

  @override
  collections_tabState createState() => collections_tabState();
}

class collections_tabState extends State<collections_tab> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        collection_card(
            index: 1,
            collectionName: "CryptoPunks",
            collectionThumbnail: "assets/collections/collections-2.png",
            items: 2),
        collection_card(
            index: 2,
            collectionName: "Axie Infinity",
            collectionThumbnail: "assets/collections/collections-1.png",
            items: 6),
        collection_card(
            index: 3,
            collectionName: "CryptoKitties",
            collectionThumbnail: "assets/collections/collections-3.png",
            items: 8),
        collection_card(
            index: 4,
            collectionName: "Mekaverse",
            collectionThumbnail: "assets/collections/collections-4.png",
            items: 1),
        collection_card(
            index: 5,
            collectionName: "Sollamas",
            collectionThumbnail: "assets/collections/collections-5.png",
            items: 1),
        collection_card(
            index: 6,
            collectionName: "Soltopia",
            collectionThumbnail: "assets/collections/collections-6.png",
            items: 1),
      ],
    );
  }
}

///Coins page
class coins_page extends StatelessWidget {
  const coins_page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/data/coins.json'),
              builder: (context, snapshot) {
                // Decode the JSON
                var newData = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        leading: Container(
                            constraints: const BoxConstraints(
                                minWidth: 70.0, maxWidth: 80),
                            height: double.infinity,
                            child: Image.asset(newData[index]['icon'])),
                        title: Text(newData[index]['title']),
                        subtitle: Text(newData[index]['protocol']),
                        trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                newData[index]['value-coins'],
                                textAlign: TextAlign.right,
                              ),
                              Text("USD " + newData[index]['value-usd'],
                                  textAlign: TextAlign.right)
                            ]),
                        onTap: () {
                          //   Navigator.of(context).pushNamed("your_route_name");
                          print(newData[index]['title']);
                        },
                      ),
                    );
                  },
                  itemCount: newData == null ? 0 : newData.length,
                );
              },
            ),
          ),
          Image.asset('assets/watermark.png'),
        ],
      ),
    );
  }
}
