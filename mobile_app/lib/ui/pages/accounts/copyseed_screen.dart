/// Created by   : Shyne Mari
/// Date Created : 2/4/21
/// Remarks      : Screen for Account Settings

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/home_screen.dart';
import 'package:poliwallet/ui/shared/widgets/add_listtile.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/button_outlined.dart';
import 'package:poliwallet/ui/shared/widgets/button_solid.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class CopySeedScreen extends StatefulWidget {
  static final String id = 'accountSettingsScreen';

  @override
  State<StatefulWidget> createState() {
    return _CopySeedScreenState();
  }
}

class _CopySeedScreenState extends State<CopySeedScreen> {
  @override
  void initState() {
    super.initState();
  }

//camp septet lifting pickerel drabs rack sincere soma spirula catarrh overfeed cloying viols jugglery sari
  @override
  Widget build(BuildContext context) {
    bool _isSelected = false;
    return new Scaffold(
      body: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: whiteAppBar(
              appbar_title: 'Back',
            ),
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: const EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/common/warning-ico.png'),
                      SizedBox(
                        width: 20.0,
                      ),
                      Flexible(
                        child: Text(
                          'The recovery phrase is the master key to your funds. Never share it with anyone else. If you lose your recovery phrase, not even Poliwallet can recover your funds.',
                          maxLines: 5,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Card(
                  elevation: 3.0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: SingleChildScrollView(
                        padding: new EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Save your seed phrase',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Make sure you take notes of your seed phrase.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w300,
                              ),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                                              style:
                                                  TextStyle(color: hintColor),
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
                              onPress: () {
                                Navigator.of(context)
                                    .pushReplacement(createRoute(HomeScreen()));
                              },
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          )),
      resizeToAvoidBottomInset: true,
    );
  }
}
