/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Load collection test screen

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';

class LoadCollectionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadCollectionScreenState();
  }
}

class _LoadCollectionScreenState extends State<LoadCollectionScreen> {
  OsAssetModel _assetModel = OsAssetModel();
  late String productName;
  int totalItems = 0;
  var resultList = [];
  List<OS_Collections> _osCollectionResult = [];
  TextEditingController controller = new TextEditingController();

  // Get json result and convert it to model. Then add
  Future<Null> getCollectionModel() async {
    resultList = await _assetModel.getAssetList();

    setState(() {
      resultList.forEach((element) {
        _osCollectionResult.add(OS_Collections.fromJson(element));
      });
      print('_osCollectionResult $_osCollectionResult');
    });
  }

  @override
  void initState() {
    super.initState();

    getCollectionModel();
  }

  Widget _buildGridResults() {
    return new GridView.builder(
      itemCount: _osCollectionResult.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.1),
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
      ),
      itemBuilder: (context, i) {
        return new Padding(
            padding: EdgeInsets.all(5),
            child: Card(
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                child: new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        strutStyle: StrutStyle(fontSize: 14.0),
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            text: '${_osCollectionResult[i].name}'),
                      ),
                      Text(
                        _osCollectionResult[i].name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          _osCollectionResult[i].name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                )));
      },
    );
  }

  Widget _buildBody() {
    return new Column(children: <Widget>[
      new Expanded(
        child: _buildGridResults(),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('POLIWALLET'),
        elevation: 0.0,
      ),
      body: _buildBody(),
      resizeToAvoidBottomInset: true,
    );
  }

  onSearchTextChanged(String text) async {
    _osCollectionResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _osCollectionResult.forEach((userDetail) {
      if (userDetail.name.contains(text)) _osCollectionResult.add(userDetail);
    });

    setState(() {});
  }
}
