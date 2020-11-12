import 'package:flutter/material.dart';

class GenreCardWidget extends StatelessWidget {
  final String genre;

  const GenreCardWidget({Key key, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(right: 10, top: 10),
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.yellow),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        genre,
        style: TextStyle(color: Colors.yellow),
      ),
    );
  }
}
