/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the outline button

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class ButtonSolid extends StatelessWidget {
  final String btn_title;
  final Color? color;
  final void Function()? onPress;
  final IconData? icon;

  const ButtonSolid({
    Key? key,
    required this.btn_title,
    this.onPress,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.0,
      borderRadius: BorderRadius.circular(15.0),
      color: (color == null ? secondaryColor : color!),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPress,
        child: SizedBox(
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (icon != null
                  ? Icon(
                      icon!,
                      color: Colors.white,
                    )
                  : Center()),
              SizedBox(
                width: 10.0,
              ),
              Text(btn_title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: (color == null
                          ? primaryColor
                          : (color == primaryColor
                              ? Colors.white
                              : Colors.black)))),
            ],
          ),
        ),
      ),
    );
  }
}
