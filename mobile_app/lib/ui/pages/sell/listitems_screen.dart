/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/pwdsecurity_screen.dart';
import 'package:poliwallet/ui/shared/widgets/accordion.dart';
import 'package:poliwallet/ui/shared/widgets/blue_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class ListItemsForSaleScreen extends StatefulWidget {
  static final String id = 'listItemsScreen';
/*
  final String? asset_name;

  final String? asset_image_url;
*/
  const ListItemsForSaleScreen({
    Key? key,
    // @required this.asset_name,
    // @required this.asset_image_url,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ListItemsForSaleScreenState();
  }
}

class _ListItemsForSaleScreenState extends State<ListItemsForSaleScreen> {
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
        child: blueAppBar(
          appbar_title: 'List item for sale',
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
              elevation: 0,
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
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset('assets/common/opensea-logo.png'),
                        ),
                        Text('Type',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Price',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16.0)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
