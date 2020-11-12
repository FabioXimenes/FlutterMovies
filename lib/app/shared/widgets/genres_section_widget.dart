import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/genre_model.dart';

import 'genre_card_widget.dart';

class GenresSectionWidget extends StatelessWidget {
  final List<GenreModel> genres;

  const GenresSectionWidget({Key key, this.genres}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: _size.width,
            child: Text(
              'Genres',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            width: _size.width,
            child: Wrap(
              children: genres
                  .map((item) => GenreCardWidget(genre: item.name))
                  .toList()
                  .cast<Widget>(),
            ),
          )
        ],
      ),
    );
  }
}
