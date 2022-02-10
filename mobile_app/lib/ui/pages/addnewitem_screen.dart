/// Created by   : Shyne Mari
/// Date Created : 2/4/21
/// Remarks      : Screen that allows you to add collection/claim POAP

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/shared/widgets/add_listtile.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

class AddNewItemScreen extends StatefulWidget {
  static final String id = 'addItemScreen';

  @override
  State<StatefulWidget> createState() {
    return _AddNewItemScreenState();
  }
}

class _AddNewItemScreenState extends State<AddNewItemScreen> {
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
            child: whiteAppBar(appbar_title: 'Add'),
          ),
          backgroundColor: Colors.white,
          body: Container(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Text(
                    'COLLECTION',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                add_listtile(
                  title: 'Create a collection',
                  description:
                      'Create, curate, and manage collections of unique NFTs to share and sell.',
                  icon: Icons.photo_library_outlined,
                ),
                SizedBox(
                  height: 10.0,
                ),
                add_listtile(
                  title: 'Create a collectible NFT',
                  description: 'Create a collection for your NFT list. ',
                  icon: Icons.photo_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 8.0),
                  child: Divider(
                    color: dividerColor,
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                  child: Text(
                    'CERTIFICATES',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                add_listtile(
                  title: 'Claim new POAP',
                  description:
                      'Claim a POAP as your proof of attendance badge for your event.',
                  icon: Icons.emoji_events_outlined,
                ),
                SizedBox(
                  height: 20.0,
                ),
                add_listtile(
                  title: 'Create new SmartKey',
                  description:
                      'Claim your corporate NFT that enables the labeling, certification and authentication of product originality.',
                  icon: Icons.verified_outlined,
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
