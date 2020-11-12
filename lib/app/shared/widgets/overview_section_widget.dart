import 'package:flutter/material.dart';

class OverviewSectionWidget extends StatelessWidget {
  final String overview;

  const OverviewSectionWidget({Key key, this.overview}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Overview',
            style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          SizedBox(height: 10),
          Text(
            overview,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
