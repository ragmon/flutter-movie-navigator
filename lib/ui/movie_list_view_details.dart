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
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Go back ${this.movie.director}"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
