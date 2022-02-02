/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Screen that allows you to connect/create a wallet

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/createwalletsp_screen.dart';
import 'package:poliwallet/ui/pages/importwalletsp_screen.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

class ConnectWalletScreen extends StatefulWidget {
  static final String id = 'connectWalletScreen';

  @override
  State<StatefulWidget> createState() {
    return _ConnectWalletScreenState();
  }
}

class _ConnectWalletScreenState extends State<ConnectWalletScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [gradientColorStart, gradientColorEnd])),
        child: Scaffold(
            // By defaut, Scaffold background is white
            // Set its value to transparent
            backgroundColor: Colors.transparent,
            //appBar: AppBar(
            //   backgroundColor: Colors.transparent,
            // ),
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/logo.png')),
                    ButtonSolid(
                      btn_title: 'Import existing wallet',
                      onPress: () {
                        Navigator.pushNamed(context, ImportWalletSPScreen.id);
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ButtonOutlined(
                      btn_title: 'Create new wallet',
                      onPress: () {
                        Navigator.pushNamed(context, CreateWalletSPScreen.id);
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            )),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
