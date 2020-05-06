import 'package:flutter/material.dart';
import 'package:movienavigator/model/movie.dart';
import 'package:movienavigator/ui/movie_list_view_details.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> movieList = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.5,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(movieList[index].images[0]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(13.9),
                  ),
                  child: null,//Text(movieList[index].title[0]),
                ),
              ),
              trailing: Text("..."),
              title: Text(movieList[index].title),
              subtitle: Text(movieList[index].actors),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieListViewDetails(
                      movie: movieList[index],
                    ),
                  ),
                ),
              },
            ),
          );
        },
      ),
    );
  }
}
