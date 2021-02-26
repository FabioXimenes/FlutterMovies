import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';

part 'video_player_controller.g.dart';

@Injectable()
class VideoPlayerController = _VideoPlayerControllerBase
    with _$VideoPlayerController;

abstract class _VideoPlayerControllerBase with Store {
  YoutubePlayerController youtubePlayerController;
}
