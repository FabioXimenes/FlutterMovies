import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/tv_episode_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/expandable_text/expandable_text_widget.dart';

class EpisodeCardWidget extends StatelessWidget {
  final TvEpisodeModel episode;

  const EpisodeCardWidget({Key key, this.episode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      // height: 150,
      width: _size.width,
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          episode.still_path != null
              ? Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(ApiUrls.image(episode.still_path))),
                  ),
                )
              : Container(
                  height: 150,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.broken_image,
                        color: Colors.grey,
                      ),
                      Text(
                        'No image found',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${episode.episode_number}. ${episode.name}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text('Release date: ${episode.air_date}',
                    style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 5),
                ExpandableTextWidget(
                    text: episode.overview,
                    defaultLines: 8,
                    style: TextStyle(color: Colors.grey, fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
