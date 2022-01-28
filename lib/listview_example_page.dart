import 'package:flutter/material.dart';
import 'package:movie_mania/movie_details_page.dart';
import 'package:movie_mania/movie_item.dart';
import 'package:movie_mania/movie_item_2.dart';

import 'temp_db.dart';

class ListviewExamplePage extends StatefulWidget {
  const ListviewExamplePage({Key? key}) : super(key: key);

  @override
  _ListviewExamplePageState createState() => _ListviewExamplePageState();
}

class _ListviewExamplePageState extends State<ListviewExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Mania'), backgroundColor: Colors.black,
      ),

      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieItem2(movies[index], index)),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: movies.map((Movie) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsPage(Movie)));
          },
          tileColor: Colors.grey.shade200,
          title: Text(Movie.name!),
          subtitle: Text(Movie.catagory!),
          leading: Image.asset(Movie.image!, width: 100, height: 100, fit: BoxFit.cover,),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.red,),
              Text(Movie.rating.toString()),
            ],
          ),
        ),
      )).toList(),
    );
  }
}
