import 'tv_details_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tv_details_page.dart';

class TvDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $TvDetailsController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:tv_id', child: (_, args) => TvDetailsPage(tvId: args.params['tv_id'])),
      ];

  static Inject get to => Inject<TvDetailsModule>.of();
}
