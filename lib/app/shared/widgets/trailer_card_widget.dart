import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_movie_app/app/shared/constants.dart';
import 'package:flutter_movie_app/app/shared/models/video_model.dart';
import 'package:flutter_movie_app/app/shared/widgets/watch_button_widget.dart';

class TrailerCardWidget extends StatelessWidget {
  final VideoModel video;

  const TrailerCardWidget({Key key, @required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Container(
      height: 150,
      width: _size.width,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(ApiUrls.videoThumbnail(video.key)))),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(video.name, style: TextStyle(color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              WatchButtonWidget(
                onTap: (){
                  // TODO - Show youtube trailer on app
                  print('TODO - Show youtube trailer on app');
                }
                // videoKey: video.key,
              )
            ],
          ))
        ],
      ),
    );
  }
}
