/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the outline button

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class ButtonSolid extends StatelessWidget {
  final String btn_title;
  final void Function()? onPress;

  const ButtonSolid({
    Key? key,
    required this.btn_title,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(15.0),
      color: secondaryColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPress,
        child: Text(
          btn_title,
          textAlign: TextAlign.center,
          style: TextStyle(color: blue120),
        ),
      ),
    );
  }
}
