/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Poliwallet homescreen

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/pages/accounts/pwdsecurity_screen.dart';
import 'package:poliwallet/ui/pages/send/transfernft_screen.dart';
import 'package:poliwallet/ui/shared/widgets/accordion.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class SendNFTScreen extends StatefulWidget {
  static final String id = 'sendNFTScreen';

  final String? asset_name;

  final String? asset_image_url;

  const SendNFTScreen({
    Key? key,
    @required this.asset_name,
    @required this.asset_image_url,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SendNFTScreenState();
  }
}

class _SendNFTScreenState extends State<SendNFTScreen> {
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
            appbar_title: 'Send Collection',
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldFillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Input recepient address',
                  labelText: 'Recepient address',
                  hintStyle: TextStyle(fontSize: 14, color: hintColor),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldFillColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Input NFT ID',
                  labelText: 'NFT ID',
                  hintStyle: TextStyle(fontSize: 14, color: hintColor),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ButtonSolid(
                    color: primaryColor,
                    btn_title: 'Continue',
                    onPress: () {
                      Navigator.of(context).push(createRoute(TxNFTConfirmScreen(
                        asset_image_url: 'NAME',
                        asset_name: 'AXIE',
                      )));
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
