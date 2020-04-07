import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterchallenge/models/bottom_tile.dart';
import 'package:flutterchallenge/models/carousel_tile.dart';
import 'package:flutterchallenge/data/bottomtiledata.dart';
import 'package:flutterchallenge/data/carouseltiledata.dart';
import 'package:flutterchallenge/views/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BottomTileModel> bottomTileData = new List();
  List<CarouselTileModel> carouselTileData = new List();

  @override
  void initState() {
    bottomTileData = getBottomTileData();
    carouselTileData = getCarouselTileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220ff2),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.menu,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Kantish's",
                    style: TextStyle(
                      color: Color(0xff5df736),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Courgette",
                      fontSize: 26,
                    ),
                  ),
                  Text(
                    " Lego Store",
                    style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Courgette",
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Container(
                    height: 152,
                    color: Color(0xff220ff2),
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 35,
                      ),
                      ClipOval(
                        child: Container(
                          color: Color(0x2ff220ff2),
                          height: 240,
                          width: MediaQuery.of(context).size.width * 2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 225,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              child: Icon(Icons.arrow_back),
                              backgroundColor: Colors.blueAccent,
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blueAccent,
                              child: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CarouselSlider.builder(
                    itemCount: carouselTileData.length,
                    scrollDirection: Axis.horizontal,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    itemBuilder: (context, index) {
                      return CarouselTile(
                        imgPath: carouselTileData[index].imgPath,
                        family: carouselTileData[index].family,
                        title: carouselTileData[index].title,
                        ageRange: carouselTileData[index].ageRange,
                        price: carouselTileData[index].price,
                      );
                    },
                    height: 230,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Explore More",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 60),
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Color(0xff220ff2),
                            fontSize: 17,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff220ff2),
                    ),
                  ],
                ),
              ),
              Container(
                height: 220,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: bottomTileData.length,
                    itemBuilder: (context, index) {
                      return BottomTile(
                        imgPath: bottomTileData[index].imgPath,
                        title: bottomTileData[index].title,
                        price: bottomTileData[index].price,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xff220ff2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.zoom_out_map,
              color: Colors.white,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/kantish.jpg"),
              radius: 20,
            ),
          ],
        ),
      ),
    );
  }
}

/// Bottom Tile

class BottomTile extends StatelessWidget {
  final String imgPath;
  final String title;
  final String price;

  BottomTile(
      {@required this.imgPath, @required this.price, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 220,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
          ),
          Container(
            height: 150,
            width: 140,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  imgPath,
                  width: 100,
                  height: 140,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "$title",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "$price",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// CarouselTile

class CarouselTile extends StatelessWidget {
  final String imgPath;
  final String family;
  final String ageRange;
  final String price;
  final String title;

  CarouselTile(
      {@required this.imgPath,
      @required this.family,
      @required this.ageRange,
      @required this.price,
      @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Text(
            "$title",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: (MediaQuery.of(context).size.width / 3),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Price: $price",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width / 3),
                  decoration: BoxDecoration(
                      border: Border(
                    right: BorderSide(color: Colors.white),
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Family: $family",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (MediaQuery.of(context).size.width / 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Age Group: $ageRange",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Image.asset(
              (imgPath),
              width: 200,
              height: 130,
              fit: BoxFit.fill,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => details()));
            },
          ),
        ],
      ),
    );
  }
}
