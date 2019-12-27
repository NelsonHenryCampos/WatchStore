import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watchstore/pages/product_page.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        width: MediaQuery.of(context).size.width,
        child: CupertinoButton.filled(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => ProductPage()));
          },
          child: Text("Explorer"),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/img/person.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, bottom: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    "ESSENTIAL",
                    style: TextStyle(
                      fontFamily: 'Avenir-Bold',
                      fontSize: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "40mm brushed stainless steel case\nadorned with a DLC/IPH coating.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
