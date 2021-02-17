import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("MyApp"),
              backgroundColor: Colors.red,
            ),
            body: ListView(
              children: <Widget>[
                Container(
                  child: new Column(
                    children: <Widget>[
                      Container(child: menuBar()),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purpleAccent,
                            width: 2,
                          ),
                        ),
                        child: mainNews(),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue[800],
                              width: 2,
                            ),
                          ),
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                          child: contentNews()),
                      Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                              right: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                              bottom: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 5, right: 5),
                          padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                          child: postDate()),
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue[800],
                              width: 2,
                            ),
                          ),
                          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
                          child: contentNews()),
                      Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                              right: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                              bottom: BorderSide(
                                color: Colors.blue[800],
                                width: 2,
                              ),
                            ),
                          ),
                          margin: EdgeInsets.only(left: 5, right: 5),
                          padding: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                          child: postDate()),
                    ],
                  ),
                ),
              ],
            )));
  }
}

class mainNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://www.footdata.com/wp-content/uploads/2020/12/5fe9ca78db69d5bebbd98e1031ad3e0f87f9c8c707d37-768x432.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            height: 230,
            width: 400,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text("Costa Mendekat ke Palmeiras",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 5),
            color: Colors.purpleAccent,
            child: Text("Transfer", style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

class contentNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://images.daznservices.com/di/library/GOAL/c0/68/gerard-pique-barcelona-yellow-card-2020-21_1b5pixs2oir8s1hy0nwfy1tnrz.jpg?t=1931977831&quality=60&w=1200&h=800'),
              fit: BoxFit.fill,
            ),
          ),
          height: 120,
          width: 200,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 5),
        ),
        Flexible(
          child: Text("Pique Bilang Wasit Untungkan Madrid,Koeman Tepok Jidat",
              style: TextStyle(fontSize: 14)),
        ),
      ],
    ));
  }
}

class postDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Row(
      children: <Widget>[
        Flexible(
          child: Text("Barcelona Feb 13, 2021", style: TextStyle(fontSize: 14)),
        ),
      ],
    ));
  }
}

class menuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, left: 25),
          alignment: Alignment.center,
          child: Text("BERITA TERBARU", style: TextStyle(fontSize: 17)),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 25),
          alignment: Alignment.center,
          child: Text("PERTANDINGAN HARI INI", style: TextStyle(fontSize: 17)),
        ),
      ],
    ));
  }
}
