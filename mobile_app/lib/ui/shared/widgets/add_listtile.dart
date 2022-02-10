/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the Add List Tile items

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/addnewitem_screen.dart';
import 'package:poliwallet/utils/constants.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';

class add_listtile extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const add_listtile({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: primaryColor,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.w700, height: 1.2),
        ),
        subtitle: Text(description,
            style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.w300, height: 1.5)),
        trailing: Icon(
          Icons.chevron_right,
          size: 30,
        ),
      ),
    );
  }
}
