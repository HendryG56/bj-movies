import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/AbousUs.dart';
import 'package:projectapp/Login.dart';
import 'package:projectapp/MovieDetail.dart';
import 'MovieDetail.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Model/Movie.dart';

// class Home_ extends StatelessWidget {
//   String nama;
//   String moviename = "Angel Has Fallen";
//   Home_({this.nama});
//
//   Widget carouselImage(BuildContext context, String imagePath) {
//     String movieName = '';
//     switch (imagePath) {
//       case 'assets/images/alladin.jpg':
//         movieName = 'Alladin';
//         break;
//       case 'assets/images/angelhasfallen.jpg':
//         movieName = 'Angel Has Fallen';
//         break;
//       case 'assets/images/avenger.jpg':
//         movieName = 'Avengers';
//         break;
//       case 'assets/images/c_marvel.jpg':
//         movieName = 'Captain Marvel';
//         break;
//       case 'assets/images/doraemon.jpg':
//         movieName = 'Doraemon';
//         break;
//       case 'assets/images/friend_zone.jpg':
//         movieName = 'Friend Zone';
//         break;
//       case 'assets/images/mib.jpg':
//         movieName = 'Men In Black';
//         break;
//       case 'assets/images/parasite.jpg':
//         movieName = 'Parasite';
//         break;
//       case 'assets/images/spiderman.jpg':
//         movieName = 'Spiderman';
//         break;
//     }
//
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => MovieDetail(
//               namamoviedetail: nama,
//               namamovie: movieName,
//             ),
//           ),
//         );
//       },
//       child: Image.asset(
//         imagePath,
//         fit: BoxFit.cover,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           ListView(
//             children: [
//               SizedBox(
//                 width: double.infinity,
//                 height: 180.0,
//                 child: Carousel(
//                   dotSize: 3.0,
//                   dotSpacing: 15.0,
//                   dotColor: Colors.white,
//                   indicatorBgPadding: 5.0,
//                   dotBgColor: Colors.transparent,
//                   dotVerticalPadding: 5.0,
//                   images: [
//                     carouselImage(context, 'assets/images/alladin.jpg'),
//                     carouselImage(context, 'assets/images/angelhasfallen.jpg'),
//                     carouselImage(context, 'assets/images/avenger.jpg'),
//                     carouselImage(context, 'assets/images/c_marvel.jpg'),
//                     carouselImage(context, 'assets/images/doraemon.jpeg'),
//                     carouselImage(context, 'assets/images/friend_zone.jpg'),
//                     carouselImage(context, 'assets/images/mib.jpeg'),
//                     carouselImage(context, 'assets/images/parasite.jpeg'),
//                     carouselImage(context, 'assets/images/spiderman.jpeg'),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               new Container(
//                 margin: EdgeInsets.fromLTRB(10, 45, 10, 10),
//                 child: Text(
//                   nama,
//                   style: TextStyle(
//                       fontSize: 30,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               new Container(
//                   margin: EdgeInsets.fromLTRB(10, 48, 5, 10),
//                   child: Align(
//                     alignment: Alignment.topRight,
//                     child: PopupMenuButton<int>(
//                       onSelected: (item) => onSelected(context, item),
//                       itemBuilder: (context) => [
//                         PopupMenuItem<int>(
//                             value: 0,
//                             child: Column(children: [
//                               Padding(
//                                   padding: EdgeInsets.only(right: 25.0),
//                                   child: Text(
//                                     'Home',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ))
//                             ])),
//                         PopupMenuItem<int>(
//                             value: 1,
//                             child: Column(
//                               children: [
//                                 Padding(
//                                     padding: EdgeInsets.only(right: 25.0),
//                                     child: Text(
//                                       'About Us',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ))
//                               ],
//                             )),
//                         PopupMenuItem<int>(
//                             value: 2,
//                             child: Column(
//                               children: [
//                                 Padding(
//                                     padding: EdgeInsets.only(right: 25.0),
//                                     child: Text(
//                                       'Log Out',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.bold),
//                                     ))
//                               ],
//                             ))
//                       ],
//                       child: Icon(
//                         Icons.dehaze_outlined,
//                         size: 50,
//                       ),
//                     ),
//                   )),
//             ],
//           ),
//           Column(children: <Widget>[
//             ButtonTheme(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0)),
//               height: 50,
//               buttonColor: Colors.black,
//               splashColor: Colors.blue,
//               child: Container(
//                   margin: EdgeInsets.fromLTRB(10, 35, 10, 10),
//                   child: RaisedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => MovieDetail(
//                                   namamoviedetail: nama, namamovie: moviename)),
//                         );
//                       },
//                       child: Container(
//                         padding: EdgeInsets.only(left: 35.0, right: 35.0),
//                         child: Text(
//                           'MOVIE',
//                           style: TextStyle(color: Colors.white, fontSize: 20),
//                         ),
//                       ))),
//             )
//           ])
//         ],
//       ),
//     );
//   }
//
//   void onSelected(BuildContext context, int item) {
//     switch (item) {
//       case 0:
//         break;
//       case 1:
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => AboutUs(namaaboutus: nama)));
//         break;
//       case 2:
//         Navigator.pop(
//             context, MaterialPageRoute(builder: (context) => Login()));
//     }
//   }
// }

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

  Widget _imageCard( movie, onPress) {
    return Card(
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
                Text(
                  movie.genre,
                  style: TextStyle(fontSize: 16)
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            _carouselHandler(),
            Expanded(
              flex: 1,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("New Movies",
                          style: TextStyle(color: Colors.black)
                        ),
                      ),
                      Tab(
                        child: Text("Popular Movie",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  body: TabBarView(
                    children: [
                      ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: newMovies.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _imageCard(
                            newMovies[index],
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieDetail(
                                        namamoviedetail: nama, namamovie: newMovies[index].name)),
                              );
                            }
                          );
                        }
                      ),
                      ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount: popularMovies.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _imageCard(
                            popularMovies[index],
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MovieDetail(
                                        namamoviedetail: nama, namamovie: popularMovies[index].name)),
                              );
                            }
                          );
                        }
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
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