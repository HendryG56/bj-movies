import 'package:flutter/material.dart';
import 'package:projectapp/Home.dart';

class AboutUs extends StatefulWidget {
  String namaaboutus;
  AboutUs({this.namaaboutus});

  @override
  _AbousUs createState() => _AbousUs(namaaboutus);
}

class _AbousUs extends State<AboutUs> {
  String namaaboutus;
  _AbousUs(this.namaaboutus);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: [
              ButtonTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                height: 50,
                buttonColor: Colors.black,
                child: Container(
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 40.0,
                      ),
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(nama: namaaboutus)),
                        );
                      },
                    )),
              ),
              new Container(
                  margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
                  child: Column(
                    children: [
                      new Text(
                        'About',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
          new Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logoeditted.png',
                  width: 300.0,
                  height: 300.0,
                ),
              ],
            ),
          ),
          new Container(
              margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
              child: Column(
                children: [
                  new Text(
                    'About BJ Movies',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ],
              )),
          new Container(
              margin: EdgeInsets.fromLTRB(15, 35, 10, 15),
              child: Column(
                children: [
                  new Text(
                    'BJ Movies is the most popular app on the web and also free. To make more easiest and support fast mobility, BJ Movies want to create application based on Mobile with the purpose to make it easier for people to find their favorite movies.',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
