/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Load collection test screen

import 'package:flutter/material.dart';
import 'package:poliwallet/core/models/os_collections.dart';
import 'package:poliwallet/core/models/rr_collections.dart';
import 'package:poliwallet/core/services/opensea_svc.dart';
import 'package:poliwallet/ui/shared/widgets/animated_route.dart';
import 'package:poliwallet/ui/shared/widgets/marketplace_appbar.dart';
import 'package:poliwallet/ui/shared/widgets/white_appbar.dart';
import 'package:poliwallet/utils/constants.dart';

import 'marketplace/assetdetails_screen.dart';

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
  List<RR_Collections> _rrCollectionResult = [];
  TextEditingController controller = new TextEditingController();

  // Get Opensea data json result and convert it to model.
  Future<Null> getCollectionModel() async {
    resultList = await _assetModel.getAssetList();

    setState(() {
      resultList.forEach((element) {
        _osCollectionResult.add(OS_Collections.fromJson(element));
      });

      //remove records with null name
      _osCollectionResult.removeWhere((element) => element.name == null);
      print('_osCollectionResult $_osCollectionResult');
    });
  }

  // Get Rarible data json result and convert it to model.
  Future<Null> getRRCollectionModel() async {
    resultList = await _assetModel.getAssetList();

    setState(() {
      resultList.forEach((element) {
        _rrCollectionResult.add(RR_Collections.fromJson(element));
      });

      //remove records with null name
      _rrCollectionResult.removeWhere((element) => element.name == null);
      print('_rrCollectionResult $_rrCollectionResult');
    });
  }

  @override
  void initState() {
    super.initState();

    getCollectionModel();
    getRRCollectionModel();
  }

  Widget _buildGridResults() {
    return new GridView.builder(
      itemCount: _osCollectionResult.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.8),
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
      ),
      itemBuilder: (context, i) {
        return new Padding(
          padding: EdgeInsets.all(5),
          child: (_osCollectionResult[i].name != null
              ? Card(
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
                        Image.network(_osCollectionResult[i].image_url!),
                        Text(
                          _osCollectionResult[i].name!,
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
                            _osCollectionResult[i].name!,
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
                  ))
              : null),
        );
      },
    );
  }

  Widget _buildBody() {
    return new Column(children: <Widget>[
      new SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.9,
          child: Column(
            children: <Widget>[
              _buildGridResults(),
            ],
          ),
        ),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: MarketPlaceAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.5,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Explore',
                style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Arts',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Music',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Domain names',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Virtual worlds',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Trading cards',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Collectibles',
                        style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Live Auctions',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: 1,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  itemBuilder: (BuildContext context, int index) {
                    return _buildCarousel(context, index);
                  },
                ),
              ),
              Text(
                'Recent Traders',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/collections/collections-2.png'),
                        backgroundColor: primaryColor,
                      ),
                      title: Text('DraftPunk'),
                      subtitle: Text('\$12,321.53'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/collections/collections-4.png'),
                        backgroundColor: primaryColor,
                      ),
                      title: Text('Nfty'),
                      subtitle: Text('\$134,321.53'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/collections/collections-3.png'),
                        backgroundColor: primaryColor,
                      ),
                      title: Text('Pickaso'),
                      subtitle: Text('\$43,321.53'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/collections/collections-5.png'),
                        backgroundColor: primaryColor,
                      ),
                      title: Text('HolyLlams'),
                      subtitle: Text('\$34,342.53'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Recommended for you',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  itemBuilder: (BuildContext context, int index) {
                    return _buildRRCarousel(context, index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      //_buildBody(),
      resizeToAvoidBottomInset: false,
    );
  }

  onSearchTextChanged(String text) async {
    _osCollectionResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _osCollectionResult.forEach((userDetail) {
      if (userDetail.name != null) {
        if (userDetail.name!.contains(text))
          _osCollectionResult.add(userDetail);
      }
    });

    setState(() {});
  }

  Widget _buildCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Text('Carousel $carouselIndex'),
        SizedBox(
          height: 8.0,
        ),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 150.0,
          child: PageView.builder(
            itemCount: _osCollectionResult.length,
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.45),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildRRCarousel(BuildContext context, int carouselIndex) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Text('Carousel $carouselIndex'),
        SizedBox(
          height: 8.0,
        ),
        SizedBox(
          // you may want to use an aspect ratio here for tablet support
          height: 150.0,
          child: PageView.builder(
            itemCount: _rrCollectionResult.length,
            // store this controller in a State to save the carousel scroll position
            controller: PageController(viewportFraction: 0.45),
            itemBuilder: (BuildContext context, int itemIndex) {
              return _buildRRCarouselItem(context, carouselIndex, itemIndex);
            },
          ),
        )
      ],
    );
  }

  Widget _buildCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushReplacement(createRoute(MPAssetDetailsScreen(
            asset_name: _osCollectionResult[itemIndex].name,
            asset_image_url: _osCollectionResult[itemIndex].image_url,
          )));
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8.0),
                width: 150,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/common/open-sea.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage(
                          _osCollectionResult[itemIndex].image_url!),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            Text(
              _osCollectionResult[itemIndex].name!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRRCarouselItem(
      BuildContext context, int carouselIndex, int itemIndex) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushReplacement(createRoute(MPAssetDetailsScreen(
            asset_name: _rrCollectionResult[itemIndex].name,
            asset_image_url: _rrCollectionResult[itemIndex].image_url,
          )));
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8.0),
                width: 150,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/common/rarible.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: NetworkImage((itemIndex == 1
                          ? 'https://rarible.mypinata.cloud/ipfs/QmU6CryzzFRBBwcAeYhnZNgaUSNCv48NBU6w5tLyz9LqdX/image.jpeg'
                          : 'https://rarible.mypinata.cloud/ipfs/QmWLiU7H1j7dgGdxbn15TDMjR2PyeRT3AiQ6ZXGN4jCYQ8/image.jpeg')),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            Text(
              _rrCollectionResult[itemIndex].name!,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
