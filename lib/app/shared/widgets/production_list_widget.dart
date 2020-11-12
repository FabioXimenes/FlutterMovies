import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/widgets/production_card_widget.dart';

class ProductionListWidget extends StatelessWidget {
  final List<dynamic> productions;

  const ProductionListWidget({Key key, @required this.productions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    List<dynamic> filteredProductions = productions.where((production) => production.poster_path != null).toList();

    return Container(
        height: 200,
        width: _size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: filteredProductions.length,
          itemBuilder: (_, index) {
            return ProductionCardWidget(
              production: filteredProductions[index],
            );
          },
        ));
  }
}
