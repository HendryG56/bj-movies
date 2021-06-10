import 'package:flutter/material.dart';
import 'package:projectapp/Home.dart';
import 'Model/Movie.dart';

class MovieDetail extends StatefulWidget {
  String namamoviedetail;
  String namamovie;
  int movieId;
  MovieDetail({this.namamoviedetail, this.movieId});

  @override
  _MovieDetail createState() => _MovieDetail(namamoviedetail, movieId);
}

class _MovieDetail extends State<MovieDetail> {
  String namamoviedetail;
  String namamovie;
  int movieId;

  _MovieDetail(this.namamoviedetail, this.movieId);

  TextEditingController reviews = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    Movie movie = movies[movieId];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        ButtonTheme(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          height: 50,
                          buttonColor: Colors.black,
                          child: Container(
                              margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back_sharp,
                                  size: 40.0,
                                ),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Home(nama: namamoviedetail)),
                                  );
                                },
                              )),
                        ),
                        new Container(
                            margin: EdgeInsets.fromLTRB(10, 55, 10, 10),
                            child: Column(
                              children: [
                                new Text(
                                  movie.title,
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ],
                    ),
                    new Container(
                      child: Column(
                        children: [
                          Image.asset(
                            movie.imageSrc,
                            width: 300.0,
                            height: 300.0,
                          ),
                        ],
                      ),
                    ),
                    new Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Row(
                          children: [
                            new Text(
                              movie.name,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    new Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Row(
                          children: [
                            new Text(
                              movie.genre,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ],
                        )),
                    new Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                        child: Row(
                          children: [
                            new Text(
                              'Synopsis',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    new Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
                        child: Column(
                          children: [
                            new Text(
                              movie.synopsis,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        )),
                    new Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Row(
                          children: [
                            new Text(
                              'Reviews',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: TextFormField(
                        controller: reviews,
                        maxLines: 3,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        validator: (String val) {
                          if (val.length > 1000 && val.isNotEmpty) {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Text(
                                        "Error",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      content: Text(
                                          'Review must be less than equals 1000 characters'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ));
                          } else {
                            reviews.text = "";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Write a review",
                            errorStyle: TextStyle(fontSize: 18),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 3))),
                      ),
                    ),
                    Row(children: <Widget>[
                      ButtonTheme(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        height: 50,
                        buttonColor: Colors.black,
                        splashColor: Colors.blue,
                        child: Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
                            child: RaisedButton(
                                onPressed: () {
                                  if (formkey.currentState.validate()) {}
                                },
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 35.0, right: 35.0),
                                  child: Text(
                                    'Submit Review',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ))),
                      )
                    ])
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
