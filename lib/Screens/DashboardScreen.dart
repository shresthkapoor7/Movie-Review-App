import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movieReviews/Model/movie.dart';
import 'package:movieReviews/Widgets/topRated.dart';
import 'package:movieReviews/Widgets/verticalList.dart';
import '../Widgets/horizontalList.dart';


class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        title: Text('Movies App'),
        actions: <Widget> [
        IconButton(
          icon: Icon(Icons.search), 
          onPressed: (){},
        ),
      ],
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: <Widget>[
                  Text('Recommended',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                  FlatButton(
                    onPressed: (){}, 
                    child: Text('View All')
                    ),
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx,i)=>HorizontalList(i),
               )
              ),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal : 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: <Widget>[
                  Text('Best of 2020',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                  FlatButton(
                    onPressed: (){}, 
                    child: Text('View All')
                    ),
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: bestMovieList.length,
                itemBuilder: (ctx,i)=>VerticalList(i),
              ),
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: <Widget>[
                  Text('Top Rated Movies',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                  FlatButton(
                    onPressed: (){}, 
                    child: Text('View All')
                    ),
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topRatedMovieList.length,
                itemBuilder: (ctx,i)=>TopRated(i),
              )
              ),
          ],
        ),
      ),
    );
  }
}