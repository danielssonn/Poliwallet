/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Screen that allows you to import your wallet, user must enter the correct seed phrase

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

import 'createwalletns_screen.dart';

class CreateWalletConfirmScreen extends StatefulWidget {
  static final String id = 'createWalletConfirmSPScreen';

  @override
  State<StatefulWidget> createState() {
    return _CreateWalletConfirmScreenState();
  }
}

class _CreateWalletConfirmScreenState extends State<CreateWalletConfirmScreen> {
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
                'Create a new wallet',
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
                            'Let\'s double check',
                            textAlign: TextAlign.center,
                            style: textHeaderStyle,
                          ),
                          Text(
                            'Please confirm your seed phrase by entering the right word for each position.',
                            textAlign: TextAlign.center,
                            style: textContentStyle,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '1.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '4.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '6.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '7.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '10.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                                TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '13.',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ButtonSolid(
                          btn_title: 'Continue',
                          onPress: () {
                            Navigator.pushNamed(
                                context, CreateWalletNSScreen.id);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
