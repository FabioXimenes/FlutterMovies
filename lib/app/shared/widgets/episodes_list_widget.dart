import 'package:flutter/material.dart';
import 'package:flutter_movie_app/app/shared/models/tv_episode_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/episode_card_widget.dart';

class EpisodesListWidget extends StatelessWidget {
  final List<TvEpisodeModel> episodes;

  const EpisodesListWidget({Key key, this.episodes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: episodes.length,
      itemBuilder: (_, index) {
        return EpisodeCardWidget(
          episode: episodes[index],
        );
      },
    );
  }
}
