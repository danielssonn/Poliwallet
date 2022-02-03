/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Screen that allows you to import your wallet, user must enter the correct seed phrase

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

import 'createwalletconfirm_screen.dart';

class CreateWalletSPScreen extends StatefulWidget {
  static final String id = 'createWalletSPScreen';

  @override
  State<StatefulWidget> createState() {
    return _CreateWalletSPScreenState();
  }
}

class _CreateWalletSPScreenState extends State<CreateWalletSPScreen> {
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
                            'Import your seed phrase',
                            textAlign: TextAlign.center,
                            style: textHeaderStyle,
                          ),
                          Text(
                            'Make sure you take note of your seed phrase',
                            textAlign: TextAlign.center,
                            style: textContentStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
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
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '2. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
                                    decoration: inputLineDecoration.copyWith(
                                      prefixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '3.',
                                            style: TextStyle(color: hintColor),
                                          )
                                        ],
                                      ),
                                      hintText: '',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '4. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
                                    decoration: inputLineDecoration.copyWith(
                                      prefixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '5.',
                                            style: TextStyle(color: hintColor),
                                          )
                                        ],
                                      ),
                                      hintText: '',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '6. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
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
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '8. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
                                    decoration: inputLineDecoration.copyWith(
                                      prefixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '9.',
                                            style: TextStyle(color: hintColor),
                                          )
                                        ],
                                      ),
                                      hintText: '',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '10. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
                                    decoration: inputLineDecoration.copyWith(
                                      prefixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '11.',
                                            style: TextStyle(color: hintColor),
                                          )
                                        ],
                                      ),
                                      hintText: '',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '12. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
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
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: TextField(
                                  decoration: inputLineDecoration.copyWith(
                                    prefixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '14. ',
                                          style: TextStyle(color: hintColor),
                                        )
                                      ],
                                    ),
                                    hintText: '',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: TextField(
                                    decoration: inputLineDecoration.copyWith(
                                      prefixIcon: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            '15.',
                                            style: TextStyle(color: hintColor),
                                          )
                                        ],
                                      ),
                                      hintText: '',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Flexible(
                                child: Center(),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          ButtonOutlined(
                            btn_title: 'Copy all seed phrase',
                            color: primaryColor,
                            onPress: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ButtonSolid(
                          btn_title: 'I have save my seed phrase',
                          onPress: () {
                            Navigator.pushNamed(
                                context, CreateWalletConfirmScreen.id);
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
