/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/pwdsecurity_screen.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/shared/widgets/accordion.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class TxNFTConfirmScreen extends StatefulWidget {
  static final String id = 'ConfirmTNFTScreen';

  final String? asset_name;

  final String? asset_image_url;

  const TxNFTConfirmScreen({
    Key? key,
    @required this.asset_name,
    @required this.asset_image_url,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TxNFTConfirmScreenState();
  }
}

class _TxNFTConfirmScreenState extends State<TxNFTConfirmScreen> {
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
            appbar_title: 'Transfer',
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0,
                child: Image.asset(
                  'assets/collections/axie-237196.png',
                  width: MediaQuery.of(context).size.width / 2.5,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Asset Name #237196',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(30.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Asset'),
                        Text('ERC-721 (ETH)'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('From'),
                        Text('0x12345.....3213'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('To'),
                        Text('0x12345.....3213'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey),
                ),
                padding: EdgeInsets.all(30.0),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Network fee'),
                        Text('0.001 ETH (\$30)'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ButtonSolid(
                    color: primaryColor,
                    btn_title: 'Continue',
                    onPress: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
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
