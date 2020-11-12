import 'movie_details_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'movie_details_page.dart';

class MovieDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $MovieDetailsController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:movieId',
            child: (_, args) => MovieDetailsPage(movieId: args.params['movieId'])),
      ];

  static Inject get to => Inject<MovieDetailsModule>.of();
}
