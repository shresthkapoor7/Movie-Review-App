import 'package:flutter/material.dart';
import 'package:movieReviews/Model/movie.dart';
import 'package:movieReviews/Screens/movieDetails.dart';

class HorizontalList extends StatelessWidget {
  final int index;
  HorizontalList(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
          width: 160,
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(MovieDetailsScreen.routeName, arguments: {
              'id': movieList[index].id,
              'title': movieList[index].title,
              'imageUrl': movieList[index].imageUrl,
              'description': movieList[index].description,
              'rating': movieList[index].rating,
              'year': movieList[index].year,
              'duration': movieList[index].duration,
            },);
          },
                  child: Column(
            children: <Widget>[
            Card(
              elevation: 10,
              child: Container(  
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    movieList[index].imageUrl
                  ),
                ),
              ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              movieList[index].title,
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
            ],
          ),
        ),
    );
  }
}