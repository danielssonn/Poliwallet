/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : PW Accordion wallet

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final Widget content;

  const Accordion({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 0,
        margin: EdgeInsets.all(0),
        child: Column(children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(
                  _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
          ),
          _showContent
              ? Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  child: widget.content,
                )
              : Container()
        ]),
      ),
    );
  }
}
