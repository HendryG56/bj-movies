import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/AbousUs.dart';
import 'package:projectapp/Login.dart';
import 'package:projectapp/MovieDetail.dart';
import 'MovieDetail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Model/Movie.dart';

class Home extends StatefulWidget {
  String nama;
  String moviename;

  Home({this.nama});

  @override
  _HomeState createState() => _HomeState(nama);
}

class _HomeState extends State<Home> {
  String nama;
  String moviename;

  List<Movie> newMovies = [
    movies[0],
    movies[1],
    movies[2],
    movies[3],
    movies[4],
  ];

  List<Movie> popularMovies = [
    movies[5],
    movies[6],
    movies[7],
    movies[8],
  ];

  _HomeState(this.nama);

  int _currentState = 0;
  List carouselImage = [
    Image.asset(
      'assets/images/spiderman.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/parasite.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/mib.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/friend_zone.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/alladin.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/doraemon.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/c_marvel.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/avenger.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/angelhasfallen.jpeg',
      fit: BoxFit.cover,
    ),
  ];
  Widget _carouselSliderMapBuilder(image) {
    return Builder(
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: image,
      ),
    );
  }

  Widget _carouselHandler() {
    return CarouselSlider(
      height: 350.0,
      initialPage: 0,
      autoPlay: true,
      reverse: false,
      autoPlayInterval: Duration(seconds: 5),
      autoPlayAnimationDuration: Duration(milliseconds: 500),
      onPageChanged: (index) {
        setState(() {
          _currentState = index;
        });
      },
      items: carouselImage
          .map(
            (image) => _carouselSliderMapBuilder(image),
          )
          .toList(),
    );
  }

  Widget _imageCard(movie, onPress) {
    return Card(
        child: InkWell(
      onTap: onPress,
      child: Row(
        children: [
          Container(
            height: 125,
            width: 125,
            child: Image.asset(
              movie.imageSrc,
              fit: BoxFit.cover,
            ),
            margin: EdgeInsets.only(right: 15),
          ),
          Expanded(
              child: Column(
            children: [
              Text(
                movie.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  movie.synopsis,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(movie.genre, style: TextStyle(fontSize: 16)),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ))
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Container(
                    child: Text(
                      nama,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Container(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: PopupMenuButton<int>(
                      onSelected: (item) => onSelected(context, item),
                      itemBuilder: (context) => [
                        PopupMenuItem<int>(
                            value: 0,
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.only(right: 25.0),
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ])),
                        PopupMenuItem<int>(
                            value: 1,
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 25.0),
                                    child: Text(
                                      'About Us',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 2,
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(right: 25.0),
                                    child: Text(
                                      'Log Out',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ))
                      ],
                      child: Icon(
                        Icons.dehaze_outlined,
                        size: 50,
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Text(
              'Movie',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            _carouselHandler(),
            Container(
              height: 713,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("New Movies",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Tab(
                        child: Text(
                          "Popular Movie",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      Column(
                        children: [
                          for (var movie in newMovies)
                            _imageCard(movie, () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieDetail(
                                        namamoviedetail: nama,
                                        movieId: movie.id)),
                              );
                            })
                        ],
                      ),
                      Column(
                        children: [
                          for (var movie in popularMovies)
                            _imageCard(movie, () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieDetail(
                                        namamoviedetail: nama,
                                        movieId: movie.id)),
                              );
                            })
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        break;
      case 1:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AboutUs(namaaboutus: nama)));
        break;
      case 2:
        Navigator.pop(
            context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
}
