/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the POAP badge

import 'package:flutter/material.dart';

class poap_badge extends StatelessWidget {
  final String img_url;

  const poap_badge({Key? key, required this.img_url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        img_url,
        width: 100.0,
        height: 100.0,
        fit: BoxFit.fill,
      ),
    );
  }
}
