import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';
import 'video_player_controller.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoId;
  const VideoPlayerPage({
    Key key,
    @required this.videoId,
  }) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState
    extends ModularState<VideoPlayerPage, VideoPlayerController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.videoId,
      params: YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        autoPlay: true,
        enableCaption: true,
        showVideoAnnotations: true,
        enableJavaScript: true,
        playsInline: false,
      ),
    )..listen(
        (event) {
          if (event.isReady && !event.hasPlayed) {
            controller.youtubePlayerController
              ..hidePauseOverlay()
              ..play()
              ..hideTopMenu();
          }
        },
      );

    controller.youtubePlayerController.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    controller.youtubePlayerController.onExitFullscreen = () {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      Future.delayed(const Duration(seconds: 1), () {
        controller.youtubePlayerController.play();
      });
      Future.delayed(const Duration(seconds: 5), () {
        SystemChrome.setPreferredOrientations(DeviceOrientation.values);
      });
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    const player = YoutubePlayerIFrame();
    return YoutubePlayerControllerProvider(
      controller: controller.youtubePlayerController,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: player,
        ),
      ),
    );
  }
}
