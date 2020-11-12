import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/cast_model.dart';

class CastCardWidget extends StatelessWidget {
  final CastModel cast;

  const CastCardWidget({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Modular.to.pushNamed(AppRoutes.personId(cast.id));
      },
      child: Column(
        children: [
          cast.profile_path == null
              ? Container(
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              : Container(
                  margin: EdgeInsets.all(10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              ApiUrls.image(cast.profile_path)))),
                ),
          Container(
            width: 80,
            child: Text(
              cast.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 80,
            child: Text(
              'as ${cast.character}',
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey,
              ),
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
