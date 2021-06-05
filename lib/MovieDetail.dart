import 'package:flutter/material.dart';
import 'package:projectapp/Home.dart';
import 'package:projectapp/Login.dart';

class MovieDetail extends StatefulWidget{
  String namamoviedetail;
  String namamovie;
  MovieDetail({this.namamoviedetail, this.namamovie});

  @override
  _MovieDetail createState() => _MovieDetail(namamoviedetail, namamovie);
}

class _MovieDetail extends State<MovieDetail>{
  String namamoviedetail;
  String namamovie;
  String title;
  String imgsrc;
  String name;
  String genre;
  String sypnosis;
  int cek = 0;
  _MovieDetail(this.namamoviedetail, this.namamovie);
  
  TextEditingController reviews = TextEditingController();

  final formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context){
    if(namamovie == "Spiderman"){
        title = "Spiderman";
        imgsrc = "assets/images/spiderman.jpeg";
        name = "Spiderman";
        genre = "Action/Adventure";
        sypnosis = "Peter Parker, the beloved super hero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins";
    }
    else if(namamovie == "Parasite"){
        title = "Parasite";
        imgsrc = "assets/images/parasite.jpeg";
        name = "Parasite";
        genre = "Thriller/Comedy";
        sypnosis = "The struggling Kim family sees an opportunity when the son stars working for the wealthy Park family. Soon, all of them find a way to work within the same household and start living a parasitic life";
    }
    else if(namamovie == "Men In Black"){
        title = "Men In Black";
        imgsrc = "assets/images/mib.jpeg";
        name = "MIB";
        genre = "Action/Sci-fi";
        sypnosis = "Agent M, a probationary member of the MIB, teams up with Agent H and uncovers a sinister plot that reveals a traitor in the organisation aiding an alien invasion";
    }
    else if(namamovie == "Friendzone"){
        title = "Friendzone";
        imgsrc = "assets/images/friend_zone.jpg";
        name = "Friend Zone";
        genre = "Romance/Drama";
        sypnosis = "In this world, there are many people who seem to be wandering along a relationship on the border of friends and lovers. This borderline is also commonly known as the friend zone and then two friends start to have romantic feelings for each other";
    }
    else if(namamovie == "Alladin"){
        title = "Alladin";
        imgsrc = "assets/images/alladin.jpg";
        name = "Alladin";
        genre = "Family/Musical";
        sypnosis = "Alladin is a loveable street urchin who meets Princess Jasmine, the beautiful daughter of the sultan of Agrabah. While visiting her exotic palace, Alladin stumbles upon a magic oil lampt that ...";
    }
    else if(namamovie == "Doraemon"){
        title = "Doraemon";
        imgsrc = "assets/images/doraemon.jpeg";
        name = "Doraemon";
        genre = "Sci-fi/Anime";
        sypnosis = "Nobita saw a moon turned yellow last night and told his class about it but they think it's funny. Doraemon gives him the 'History Explorers Club Badge' and discovers there's life on the moon. Until a new student changed him forever";
    }
    else if(namamovie == "Captain Marvel"){
        title = "Captain Marvel";
        imgsrc = "assets/images/c_marvel.jpg";
        name = "Captain Marvel";
        genre = "Action/Sci-fi";
        sypnosis = "Amidst a mission, Vers, a Kree warrior, gets separated from her team and is stranded on Earth. However, her life takes an unusual turn after she teams up with Fury, a S.H.I.E.L.D agent";
    }
    else if(namamovie == "Avengers"){
        title = "Avengers";
        imgsrc = "assets/images/avenger.jpg";
        name = "Avengers";
        genre = "Action/Sci-fi";
        sypnosis = "After Thanos, an intergalatic warlod, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance";
    }
    else {
        title = "Angel Has Fallen";
        imgsrc = "assets/images/angelhasfallen.jpeg";
        name = "Angel Has Fallen";
        genre = "Action/Thriller";
        sypnosis = "Mike Banning is framed for the attempted assasination of the President and must evade his own agency and the FBI as he tries to uncover the real threat";
    }

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
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                          height: 50,
                          buttonColor: Colors.black,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_sharp,
                                size: 40.0,
                              ),
                              onPressed: (){
                                Navigator.pop(context, MaterialPageRoute(builder: (context) =>Home_(nama: namamoviedetail)),
                                );
                              },
                            )
                          )
                        ,),
                    new Container(
                      margin: EdgeInsets.fromLTRB(10, 55, 10, 10),
                      child: Column(
                        children: [
                        new Text(title, style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                      ],)
                    ),
                ],
              ),  
              new Container(
                      child: Column(
                      children: [
                          Image.asset(imgsrc
                        ,width: 300.0,
                        height: 300.0,
                        ),
                    ],
                  ),
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                    children: [
                    new Text(name, style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],)
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                    children: [
                    new Text(genre, style: TextStyle(fontSize: 18, color: Colors.black),),
                    ],)
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 2),
                child: Row(
                    children: [
                    new Text('Synopsis', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],)
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
                child: Column(
                    children: [
                    new Text(sypnosis, style: TextStyle(fontSize: 20, color: Colors.black),),
                    ],)
              ),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Row(
                    children: [
                    new Text('Reviews', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                    ],)
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: TextFormField(
                    controller: reviews,
                    maxLines: 3,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    validator: (String val){
                      if(val.length > 1000 && val.isNotEmpty){
                        showDialog(context: context, builder: (_) =>
                           AlertDialog(
                            title: Text(
                              "Error",
                              style: TextStyle(color: Colors.red),
                            ),
                            content: Text('Review must be less than equals 1000 characters'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text('OK'),
                              ),
                            ],
                          )
                        );
                      } else {
                        reviews.text = "";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Write a review",
                      errorStyle: TextStyle(fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 3) 
                        ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 3) 
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 3) 
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.black, width: 3) 
                      )
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    ButtonTheme(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      height: 50,
                      buttonColor: Colors.black,
                      splashColor: Colors.blue,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 10, 3),
                        child: RaisedButton(
                          onPressed: (){
                              if (formkey.currentState.validate()){}
                          },
                            child: Container(
                            padding: EdgeInsets.only(left:35.0, right: 35.0),
                            child: Text('Submit Review', 
                            style: TextStyle(color: Colors.white, fontSize: 20),
                           ),
                          )
                        )
                     )
                  ,)
                ]
              )
            ],
            )
            ),
          ]
        ),
      ),
    );
  }
}