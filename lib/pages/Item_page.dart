import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watchstore/custom_icons.dart';
import 'package:watchstore/pages/product_page.dart';

class ItemPage extends StatefulWidget {
  ItemPage({Key key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  void initState() {
    super.initState();
  }

  bool _isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDark ? Color(0xFF222222) : Color(0xFFF2F9FF),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ProductPage()));
              });
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: _isDark ? Colors.white : Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.favorite_border,
            color: _isDark ? Colors.white : Colors.black,
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              CustomIcons.shopping_bag,
              color: _isDark ? Colors.white : Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                right: -50,
                child: Container(
                  child: Image.asset(
                    _isDark
                        ? "assets/img/watch.png"
                        : "assets/img/watch_branco.png",
                    scale: 1.1,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 170),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      _isDark = true;
                      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                        systemNavigationBarColor: Color(0xFF222222),
                        statusBarColor: Colors.transparent, // status bar color
                      ));
                      
                    });
                  },
                  child: Opacity(
                    opacity: _isDark ? 1 : 0.5,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: _isDark ? Colors.white :Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/img/watch.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _isDark = false;
                      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                        systemNavigationBarColor: Color(0xFFF2F9FF),
                        statusBarColor: Colors.transparent, // status bar color
                      ));
                    });
                  },
                  child: Opacity(
                    opacity: _isDark ? 0.5 : 1,
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: _isDark ? Colors.white :Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/img/watch_branco.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 530,
            left: 20,
            child: Column(
              children: <Widget>[
                Text(
                  _isDark ? "ESSENTIAL ES01 BLACK" : "ESSENTIAL ES01 WHITE",
                  style: TextStyle(
                      color: _isDark ? Colors.white : Colors.black,
                      fontSize: 25,
                      fontFamily: "Avenir-bold"),
                ),
                Container(
                  padding: EdgeInsets.only(right: 215),
                  child: Text(
                    "¥1140",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: _isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 160),
                  child: Text(
                    "Delivery cost: FREE",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: _isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 55),
                  child: Text(
                    "Estimated delivery date: Jan 4, 2020",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: _isDark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: _isDark ? Colors.white : Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CustomIcons.arrow_left,
                        color: _isDark ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: 250,
                    child: CupertinoButton.filled(
                      onPressed: () {},
                      child: Text("NEXT"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
