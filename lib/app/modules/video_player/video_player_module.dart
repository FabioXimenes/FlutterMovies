import 'video_player_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'video_player_page.dart';

class VideoPlayerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $VideoPlayerController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/:videoId',
          child: (_, args) => VideoPlayerPage(
            videoId: args.params['videoId'],
          ),
        ),
      ];

  static Inject get to => Inject<VideoPlayerModule>.of();
}
