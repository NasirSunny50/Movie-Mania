import 'package:flutter/material.dart';
import 'package:movie_mania/movie_details_page.dart';

import 'movie_model.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;
  final int index;

  MovieItem(this.movie, this.index);

  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsPage(widget.movie)));
        },
        tileColor: widget.index.isEven ? Colors.grey.shade200 : Colors.grey.shade300,
        title: Text(widget.movie.name!),
        subtitle: Text(widget.movie.catagory!),
        leading: Image.asset(widget.movie.image!, width: 100, height: 100, fit: BoxFit.cover,),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.red,),
            Text(widget.movie.rating.toString()),
          ],
        ),
      ),
    );
  }
}
