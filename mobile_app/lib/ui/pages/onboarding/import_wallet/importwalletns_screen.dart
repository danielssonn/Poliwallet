/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Import wallet screen that asks the user to enter the wallet credentials

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/utils/constants.dart';

class ImportWalletNSScreen extends StatefulWidget {
  static final String id = 'importWalletNSScreen';

  @override
  State<StatefulWidget> createState() {
    return _ImportWalletNSScreenState();
  }
}

class _ImportWalletNSScreenState extends State<ImportWalletNSScreen> {
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
                'Import existing wallet',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Container(
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
                          'Add wallet name & password',
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
                        SizedBox(
                          height: 40.0,
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
                          Navigator.pushNamed(context, HomeScreen.id);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
