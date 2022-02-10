/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/pwdsecurity_screen.dart';
import 'package:poliwallet/ui/pages/sell/listitems_screen.dart';
import 'package:poliwallet/ui/shared/widgets/accordion.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class MPAssetDetailsScreen extends StatefulWidget {
  static final String id = 'collectionSummaryScreen';

  final String? asset_name;

  final String? asset_image_url;

  const MPAssetDetailsScreen({
    Key? key,
    @required this.asset_name,
    @required this.asset_image_url,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MPAssetDetailsScreenState();
  }
}

class _MPAssetDetailsScreenState extends State<MPAssetDetailsScreen> {
  OsAssetModel _assetModel = OsAssetModel();
  late String productName;
  int totalItems = 0;
  var resultList = [];
  List<OS_Collections> _osCollectionResult = [];
  TextEditingController controller = new TextEditingController();
  int _selectedIndex = 0;

  //get asset_name => null;

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
        child: whiteAppBar(
          appbar_title: 'Back',
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            color: surfaceColor,
            width: MediaQuery.of(context).size.width,
            height: 150,
          ),
          Card(
            elevation: 0,
            color: Colors.white,
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
                      Container(
                        margin: EdgeInsets.all(8.0),
                        height: 250,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset('assets/common/open-sea.png'),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(this.widget.asset_image_url!),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30.0,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              this.widget.asset_name!,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Current price'),
                              Text(
                                '2 ETH',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),

                          ///Tab -- start
                          Column(
                            children: <Widget>[
                              Container(
                                child: DefaultTabController(
                                  length: 2,
                                  initialIndex: 0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Container(
                                        child: TabBar(
                                            labelColor: primaryColor,
                                            unselectedLabelColor: Colors.black,
                                            tabs: [
                                              Tab(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(
                                                      Icons.sell,
                                                      color: secondaryColor,
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text('Market'),
                                                  ],
                                                ),
                                              ),
                                              Tab(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .trending_up_outlined,
                                                      color: secondaryColor,
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text('Activity'),
                                                  ],
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Container(
                                        height: 240,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                top: BorderSide(
                                                    color: Colors.grey,
                                                    width: 0.5))),
                                        child: TabBarView(
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.all(8.0),
                                              decoration: new BoxDecoration(
                                                color: lightBlueColor,
                                              ),
                                              child: SingleChildScrollView(
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          'Listings',
                                                          style: TextStyle(
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      minWidth:
                                                                          8.0,
                                                                      maxWidth:
                                                                          12.0),
                                                              height: 20.0,
                                                              child: Image.asset(
                                                                  'assets/common/eth-ico.png')),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                '2 ETH',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                '1 month left',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            '0xc...8hp432',
                                                            style: TextStyle(
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                          buy_button(),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 18.0,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      minWidth:
                                                                          8.0,
                                                                      maxWidth:
                                                                          12.0),
                                                              height: 20.0,
                                                              child: Image.asset(
                                                                  'assets/common/eth-ico.png')),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                '2 ETH',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                '1 month left',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            '0xc...8hp432',
                                                            style: TextStyle(
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                          buy_button(),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 18.0,
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          'Offers',
                                                          style: TextStyle(
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      minWidth:
                                                                          8.0,
                                                                      maxWidth:
                                                                          12.0),
                                                              height: 20.0,
                                                              child: Image.asset(
                                                                  'assets/common/eth-ico.png')),
                                                          Column(
                                                            children: <Widget>[
                                                              Text(
                                                                '2 ETH',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              Text(
                                                                '1 month left',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            '93% below',
                                                            style: TextStyle(
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                          Text(
                                                            '0xc...8hp432',
                                                            style: TextStyle(
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              decoration: new BoxDecoration(
                                                color: lightBlueColor,
                                              ),
                                              child: Column(
                                                children: <Widget>[
                                                  Expanded(
                                                    child: ListTile(
                                                      leading: CircleAvatar(
                                                        radius: 30.0,
                                                        backgroundImage: AssetImage(
                                                            'assets/collections/collections-2.png'),
                                                        backgroundColor:
                                                            primaryColor,
                                                      ),
                                                      title: Row(
                                                          children: <Widget>[
                                                            Text('Offered '),
                                                            Text(
                                                              '2 ETH',
                                                              style: (TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                            ),
                                                            Text(
                                                                ' an hour ago '),
                                                          ]),
                                                      subtitle: Text(
                                                          'by 0xc553dg.....8hp432'),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListTile(
                                                      leading: CircleAvatar(
                                                        radius: 30.0,
                                                        backgroundImage: AssetImage(
                                                            'assets/collections/collections-1.png'),
                                                        backgroundColor:
                                                            primaryColor,
                                                      ),
                                                      title: Row(
                                                          children: <Widget>[
                                                            Text('Offered '),
                                                            Text(
                                                              '2 ETH',
                                                              style: (TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                            ),
                                                            Text(
                                                                ' 2 days ago '),
                                                          ]),
                                                      subtitle: Text(
                                                          'by 0xgt53dg.....213231'),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListTile(
                                                      leading: CircleAvatar(
                                                        radius: 30.0,
                                                        backgroundImage: AssetImage(
                                                            'assets/collections/collections-5.png'),
                                                        backgroundColor:
                                                            primaryColor,
                                                      ),
                                                      title: Row(
                                                          children: <Widget>[
                                                            Text('Offered '),
                                                            Text(
                                                              '2 ETH',
                                                              style: (TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                            ),
                                                            Text(
                                                                ' 1 week ago '),
                                                          ]),
                                                      subtitle: Text(
                                                          'by 0xc5sddg.....123d56'),
                                                    ),
                                                  ),
                                                ],
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

                          ///Tab -- end

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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                  fontWeight: FontWeight.bold),
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
                                                  fontWeight: FontWeight.bold),
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
                                                  fontWeight: FontWeight.bold),
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
                                                  fontWeight: FontWeight.bold),
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
                        btn_title: 'Make offer',
                        color: primaryColor,
                        onPress: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  scrollable: true,
                                  title: Text(
                                    'Make an offer',
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
                                          Text('Price',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0)),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          TextField(
                                            obscureText: true,
                                            decoration:
                                                inputDecoration.copyWith(
                                              hintText: 'Input price',
                                              prefixIcon: Image.asset(
                                                  'assets/common/eth-ico.png'),
                                              labelText: 'Input price',
                                              suffixText: '\$0',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                          ),
                                          Text('Offer expiration',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0)),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Row(children: <Widget>[
                                            DropdownButton<String>(
                                              items: <String>[
                                                '1 day',
                                                '2 days',
                                                '7 days',
                                                '1 month'
                                              ].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                              value: '7 days',
                                              onChanged: (_) {},
                                            ),
                                            Expanded(
                                              child: TextField(
                                                obscureText: true,
                                                decoration:
                                                    inputDecoration.copyWith(
                                                  hintText: '00:00',
                                                  prefixIcon:
                                                      Icon(Icons.access_time),
                                                ),
                                              ),
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          LabeledCheckbox(
                                            label:
                                                'By checking this box, I agree to OpenSea’s Terms of Service.',
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 10),
                                            value: false,
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                //_isSelected = newValue;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: ButtonSolid(
                                        btn_title: 'Make offer',
                                        color: primaryColor,
                                        onPress: () {
                                          //pop navigator
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .pop('dialog');
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ButtonSolid(
                        btn_title: 'Buy now',
                        color: primaryColor,
                        onPress: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  scrollable: true,
                                  title: Text(
                                    'Complete checkout',
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
                                          Card(
                                            elevation: 0,
                                            child: ListTile(
                                              leading: CircleAvatar(
                                                radius: 30.0,
                                                backgroundImage: NetworkImage(
                                                    widget.asset_image_url!),
                                                backgroundColor: primaryColor,
                                              ),
                                              title:
                                                  Text(this.widget.asset_name!),
                                              onTap: () {
                                                //   Navigator.of(context).pushNamed("your_route_name");
                                                //print(newData[index]['title']);
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text('Creator earnings : 10%',
                                              style: TextStyle(
                                                  color: subTextColor,
                                                  fontSize: 14.0)),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          Text('Total',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.0)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  constraints:
                                                      const BoxConstraints(
                                                          minWidth: 8.0,
                                                          maxWidth: 12.0),
                                                  height: 30.0,
                                                  child: Image.asset(
                                                      'assets/common/eth-ico.png')),
                                              Text('2 ETH',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22.0)),
                                              SizedBox(
                                                width: 40.0,
                                              ),
                                              Text('\$4,321',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.0)),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          LabeledCheckbox(
                                            label:
                                                'By checking this box, I agree to OpenSea’s Terms of Service.',
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0, vertical: 10),
                                            value: true,
                                            onChanged: (bool newValue) {
                                              setState(() {
                                                //_isSelected = newValue;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: ButtonSolid(
                                        btn_title: 'Confirm checkout',
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

class buy_button extends StatelessWidget {
  const buy_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: iconBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Text(
          'buy',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
