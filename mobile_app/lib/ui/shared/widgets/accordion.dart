/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : PW Accordion wallet

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  Accordion(this.title, this.content);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 1.25),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        child: Card(
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
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Text(widget.content),
                  )
                : Container()
          ]),
        ),
      ),
    );
  }
}
