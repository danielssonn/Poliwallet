/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Widget for the outline button

import 'package:flutter/material.dart';
import 'package:poliwallet/ui/pages/collections/collectionsumm_screen.dart';
import 'package:poliwallet/utils/constants.dart';

import 'animated_route.dart';

class collection_card extends StatefulWidget {
  final int index;
  final String collectionName;
  final String collectionThumbnail;
  final int items;

  const collection_card(
      {Key? key,
      required this.index,
      required this.collectionName,
      required this.collectionThumbnail,
      required this.items});

  @override
  _collection_cardState createState() => _collection_cardState();
}

class _collection_cardState extends State<collection_card> {
  double expHeight = 0.0;
  int _clickedIndex = 0;
  bool _active = false;

  get items => widget.items;

  get index => widget.index;

  void _handleTapboxChanged(int currIndex) {
    setState(() {
      _clickedIndex = currIndex;
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: (_clickedIndex == index
            ? (80.0 * this.widget.index + expHeight)
            : 80.0 * this.widget.index),
        left: 15,
        right: 15,
        child: Container(
          child: SingleChildScrollView(
              child: Container(
            padding: EdgeInsets.all(8.0),
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 64, 101, 0.15),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 0.2), // changes position of shadow
                  ),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)),
              child: Card(
                elevation: 0.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(widget.collectionName),
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage(this.widget.collectionThumbnail),
                        backgroundColor: primaryColor,
                      ),
                      trailing: Text("($items)"),
                      onTap: () {
                        setState(() {
                          _handleTapboxChanged(index);
                          if (_active && _clickedIndex == index) {
                            expHeight = 0;
                          } else {
                            expHeight = (_clickedIndex == index
                                ? (index == 1 ? -100 : -130)
                                : (index == 1 ? 90 : 110));
                          }

                          print(_clickedIndex);
                          print('active$_active');
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      crossAxisAlignment: CrossAxisAlignment
                          .center, //Center Row contents vertically,
                      children: <Widget>[
                        Image.asset('assets/common/nft-placeholder.png',
                            height: 80, fit: BoxFit.fill),
                        SizedBox(
                          width: 30.0,
                        ),
                        Image.asset('assets/common/nft-placeholder.png',
                            height: 80, fit: BoxFit.fill),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: new InkWell(
                          child: new Text(
                            'Browse All',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .push(createRoute(CollectionSummaryScreen()));
//
                          }),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ));
  }
}
