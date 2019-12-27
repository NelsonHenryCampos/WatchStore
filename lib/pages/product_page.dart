import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watchstore/custom_icons.dart';
import 'package:watchstore/pages/Item_page.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF222222), // navigation bar color
      statusBarColor: Color(0xFFF2F9FF), // status bar color
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F9FF),
      appBar: AppBar(
        title: Text(
          "GREYHOURS",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          CustomIcons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              CustomIcons.shopping_bag,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/img/banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "WATCHES",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "STRAPS",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 45),
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 40, top: 35),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child: Container(
                          width: 250,
                          height: 290,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 7,
                        child: Container(
                          width: 250,
                          height: 330,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => ItemPage()));
                        });
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 250,
                              height: 370,
                              child: Card(
                                elevation: 7,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(top: 20, left: 20),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "SAPHIRE GLASS",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 20, left: 20),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "ESSENCIAL\nDARK\nHOURS",
                                        style: TextStyle(
                                          fontFamily: "Avenir-bold",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: 190, left: 20),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "¥1140",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              child: Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    'assets/img/watch.png',
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 370,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 75,
              decoration: BoxDecoration(
                color: Color(0xFF222222),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                              "HOME",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 55),
                    child: Icon(Icons.favorite, color: Colors.white,),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 40),
                    child: Icon(CustomIcons.user, color: Colors.white,),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
