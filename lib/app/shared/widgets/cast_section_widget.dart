import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/cast_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/cast_card_widget.dart';

class CastSectionWidget extends StatelessWidget {
  final List<CastModel> cast;

  const CastSectionWidget({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        children: [
          Container(
            width: _size.width,
            child: Text(
              'Cast',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Container(
            height: 165,
            width: _size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (_, index) {
                return CastCardWidget(cast: cast[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
