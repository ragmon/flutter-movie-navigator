import 'package:flutter/material.dart';
import 'package:movienavigator/model/movie.dart';

class MovieListViewDetails extends StatelessWidget {
  final Movie movie;

  const MovieListViewDetails({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: <Widget>[
          MovieDetailsThumbnail(
            thumbnail: movie.images[0],
          )
        ],
      ),
//      body: Center(
//        child: Container(
//          child: RaisedButton(
//            child: Text("Go back ${this.movie.director}"),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//          ),
//        ),
//      ),
    );
  }
}

class MovieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(this.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Icon(
              Icons.play_circle_outline,
              size: 100,
              color: Colors.white,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          height: 80,
        ),
      ],
    );
  }
}
