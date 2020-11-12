import 'genre_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'genre_page.dart';

class GenreModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $GenreController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:genreId/:genreName', child: (_, args) => GenrePage(genreId: args.params['genreId'], genreName: args.params['genreName'])),
      ];

  static Inject get to => Inject<GenreModule>.of();
}
