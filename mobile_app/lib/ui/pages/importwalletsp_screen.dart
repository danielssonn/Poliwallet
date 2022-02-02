/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Screen that allows you to import your wallet, user must enter the correct seed phrase

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/importwalletns_screen.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

class ImportWalletSPScreen extends StatefulWidget {
  static final String id = 'importWalletSPScreen';

  @override
  State<StatefulWidget> createState() {
    return _ImportWalletSPScreenState();
  }
}

class _ImportWalletSPScreenState extends State<ImportWalletSPScreen> {
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
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                'Import an existing wallet',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Container(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Import your seed phrase',
                            textAlign: TextAlign.center,
                            style: textHeaderStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Make sure you take note of your seed phrase',
                            textAlign: TextAlign.center,
                            style: textContentStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 20,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: textFieldFillColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                hintText: 'Enter your seed phrase here',
                                hintStyle:
                                    TextStyle(fontSize: 14, color: hintColor),
                              ),
                            ),
                          )
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
                          btn_title: 'Continue',
                          onPress: () {
                            Navigator.pushNamed(
                                context, ImportWalletNSScreen.id);
                          },
                        ),
                      ),
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
