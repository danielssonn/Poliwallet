/// Created by   : Shyne Mari
/// Date Created : 2/4/21
/// Remarks      : Screen that allows you to trade NFTs

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/add_listtile.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class AddNewTradeScreen extends StatefulWidget {
  static final String id = 'addTradeItemScreen';

  @override
  State<StatefulWidget> createState() {
    return _AddNewTradeScreentate();
  }
}

class _AddNewTradeScreentate extends State<AddNewTradeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: whiteAppBar(appbar_title: 'Trade'),
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                add_listtile(
                  title: 'Send',
                  description: '',
                  icon: Icons.send_outlined,
                ),
                SizedBox(
                  height: 10.0,
                ),
                add_listtile(
                  title: 'Receive',
                  description: '',
                  icon: Icons.download_outlined,
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          )),
      resizeToAvoidBottomInset: true,
    );
  }
}
