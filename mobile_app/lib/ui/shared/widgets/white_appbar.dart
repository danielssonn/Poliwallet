/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the home app bar

import 'package:flutter/material.dart';

class whiteAppBar extends StatelessWidget {
  final String appbar_title;

  const whiteAppBar({
    Key? key,
    required this.appbar_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: BackButton(color: Colors.black),
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Text(
        appbar_title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.black,
        ),
      ),
    );
  }
}
