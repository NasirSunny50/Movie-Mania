import 'dart:ffi';

import 'package:flutter/material.dart';

import 'movie_details_page.dart';
import 'movie_model.dart';

class MovieItem2 extends StatefulWidget {
  final Movie movie;
  final int index;

  MovieItem2(this.movie, this.index);

  @override
  _MovieItem2State createState() => _MovieItem2State();
}

class _MovieItem2State extends State<MovieItem2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsPage(widget.movie))),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(24.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
                child: Image.asset(widget.movie.image!,width: double.infinity, height: 350, fit: BoxFit.cover,)),
            Positioned(
              top: 50,
                right: 10,
                left: 10,
                child: Chip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Colors.black54,
                    label: Text(widget.movie.name!, style: TextStyle(color: Colors.white, fontSize: 30),)
                )
            ),
            Positioned(
              bottom: -20,
              right: 0,
              left: 0,
              child: Center(
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                      elevation: 15,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsPage(widget.movie)));
                    },
                    child: Text('Details'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
