/// Created by   : Shyne Mari
/// Date Created : 2/4/21
/// Remarks      : Screen for Account Settings

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/add_listtile.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

import 'pwdsecurity_screen.dart';

class AccountSettingsScreen extends StatefulWidget {
  static final String id = 'accountSettingsScreen';

  @override
  State<StatefulWidget> createState() {
    return _AccountSettingsScreenState();
  }
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
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
                SizedBox(
                  height: 50.0,
                ),
                TextField(
                  keyboardType: TextInputType.name,
                  decoration: inputDecoration.copyWith(
                    hintText: 'input wallet name',
                    labelText: 'Acccount 1',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  title: Text('Show recovery phrase'),
                  trailing: IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {
                      setState(() {
                        // _showContent = !_showContent;
                        Navigator.of(context)
                            .push(createRoute(PasswordToContinueScreen()));
                      });
                    },
                  ),
                ),
              ],
            ),
          )),
      resizeToAvoidBottomInset: true,
    );
  }
}
