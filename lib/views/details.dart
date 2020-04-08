import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff220ff2),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: 50,
                  color: Color(0xff220ff2),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Details",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: new ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(
                    height: 17,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 22,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/star.png",
                                      height: 13,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      "assets/star.png",
                                      height: 13,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      "assets/star.png",
                                      height: 13,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      "assets/star.png",
                                      height: 13,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      "assets/star.png",
                                      height: 13,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Family",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Creator",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff220ff2),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Ages",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "16+",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff220ff2),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Level",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Expert",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff220ff2),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Stack(
                          children: <Widget>[
                            CircleAvatar(
                              child: Image.asset(
                                "assets/legotaj.jpeg",
                                height: MediaQuery.of(context).size.width * 0.7,
                                width: MediaQuery.of(context).size.width * 0.7,
                              ),
                              backgroundColor: Colors.black12,
                              radius:
                                  (MediaQuery.of(context).size.width / 2) - 5,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.7,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      height: 60,
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      decoration: BoxDecoration(
                                        color: Color(0xff220ff2),
                                        borderRadius:
                                            new BorderRadius.horizontal(
                                          left: new Radius.circular(35.0),
                                        ),
                                      ),
                                      child: Text(
                                        "Price: \$399",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 22,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              alignment: WrapAlignment.start,
                              direction: Axis.horizontal,
                              spacing: 10.0,
                              runSpacing: 20.0,
                              children: <Widget>[
                                Text(
                                  "Lego Taj Mahal is one of the hardest to find currently.  Has intricate details with all minarets, design, etc.  Get one before its gone forever.",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff220ff2),
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "BUY  IT  NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              color: Color(0xff1508a1),
              child: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
