/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the home app bar

import 'package:flutter/material.dart';
import 'package:poliwallet/utils/constants.dart';

class blueAppBar extends StatelessWidget {
  final String appbar_title;
  final String? img_link;

  const blueAppBar({
    Key? key,
    required this.appbar_title,
    this.img_link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: BackButton(color: Colors.white),
      backgroundColor: primaryColor,
      centerTitle: true,
      title: Center(
        child: Row(
          children: [
            (img_link != null
                ? CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(img_link!),
                    backgroundColor: primaryColor,
                  )
                : Center()),
            SizedBox(
              width: 10.0,
            ),
            Text(
              appbar_title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      flexibleSpace: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF69ADF4),
              Color(0xFF2D83E8),
            ],
          ),
        ),
      ),
    );
  }
}
