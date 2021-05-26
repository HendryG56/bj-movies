import 'package:flutter/material.dart';
import 'package:projectapp/AbousUs.dart';
import 'package:projectapp/Login.dart';
import 'package:projectapp/MovieDetail.dart';

class Home_ extends StatelessWidget {
  
  String nama;
  String moviename = "Angel Has Fallen";
  Home_({this.nama});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          new Container(
            margin: EdgeInsets.fromLTRB(10, 45, 10, 10),
            child: Text(nama, style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
            ),
                new Container(
                  margin: EdgeInsets.fromLTRB(10, 48, 5, 10),
                  child: Align(
                    alignment: Alignment.topRight,
                  child: PopupMenuButton<int>(
                    onSelected: (item) => onSelected(context, item),
                    itemBuilder: (context) => [
                      PopupMenuItem<int>(
                        value: 0,
                        child: Column(
                          children: [
                            Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Text('Home', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                            )
                          ]
                        )
                        ),
                        PopupMenuItem<int>(
                        value: 1,
                        child: Column(
                          children: [
                            Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Text('About Us', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                            )
                          ],
                        )
                        ),
                        PopupMenuItem<int>(
                        value: 2,
                        child: Column(
                          children: [
                            Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: Text('Log Out', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                            )
                          ],
                        )
                        )
                    ],
                    child: Icon(
                      Icons.dehaze_outlined,
                      size: 50,
                    ),
                  ),
                  )
                ),
                ],),
                 Column(
              children: <Widget>[
                ButtonTheme(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  height: 50,
                  buttonColor: Colors.black,
                  splashColor: Colors.blue,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
                    child: RaisedButton(
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>MovieDetail(namamoviedetail : nama, namamovie: moviename
                            )),
                          );
                      },
                        child: Container(
                        padding: EdgeInsets.only(left:35.0, right: 35.0),
                        child: Text('MOVIE', 
                        style: TextStyle(color: Colors.white, fontSize: 20),
                       ),
                      )
                    )
                      )
                      ,)
              ]
            )
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item){
      switch (item){
        case 0:
          break;
        case 1:
          Navigator.push(context, MaterialPageRoute(builder: (context) =>AboutUs(namaaboutus: nama)));
          break;
        case 2:
          Navigator.pop(context, MaterialPageRoute(builder: (context) =>Login()));
      }
    }
}
