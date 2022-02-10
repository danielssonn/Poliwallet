/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Screen that allows you to import your wallet, user must enter the correct seed phrase

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

class CreateWalletNSScreen extends StatefulWidget {
  static final String id = 'createWalletNSScreen';

  @override
  State<StatefulWidget> createState() {
    return _CreateWalletNSScreenState();
  }
}

class _CreateWalletNSScreenState extends State<CreateWalletNSScreen> {
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
                            'Let\s double check',
                            textAlign: TextAlign.center,
                            style: textHeaderStyle,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Please confirm your seed phrase by entering the right word for each position.',
                            textAlign: TextAlign.center,
                            style: textContentStyle,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextField(
                            keyboardType: TextInputType.name,
                            decoration: inputDecoration.copyWith(
                              hintText: 'input wallet name',
                              labelText: 'Wallet name',
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: inputDecoration.copyWith(
                              hintText: 'Enter password',
                              labelText: 'Password',
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: iconBackgroundColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: inputDecoration.copyWith(
                              hintText: 'Enter password once again',
                              labelText: 'Confirm Password',
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: iconBackgroundColor,
                              ),
                            ),
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
                          btn_title: 'Continue',
                          onPress: () {
                            Navigator.pushNamed(context, HomeScreen.id);
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
