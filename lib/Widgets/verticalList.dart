import 'package:flutter/material.dart';
import 'package:movieReviews/Model/movie.dart';
import 'package:movieReviews/Screens/movieDetails.dart';

class VerticalList extends StatelessWidget {
  final int index;
  VerticalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      GestureDetector(
         onTap: (){
            Navigator.of(context).pushNamed(MovieDetailsScreen.routeName, arguments: {
              'id': bestMovieList[index].id,
              'title': bestMovieList[index].title,
              'imageUrl': bestMovieList[index].imageUrl,
              'description': bestMovieList[index].description,
              'rating': bestMovieList[index].rating,
              'year': bestMovieList[index].year,
              'duration': bestMovieList[index].duration,
            },);
          },
              child: Card(
          elevation: 5.0,
          child: Row(
            children: <Widget> [
              Hero(
                tag: bestMovieList[index].id,
                              child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        bestMovieList[index].imageUrl,
                        ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text(bestMovieList[index].title,
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200,
                      child: Text(bestMovieList[index].description))
                  ],
                  ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
  }
}