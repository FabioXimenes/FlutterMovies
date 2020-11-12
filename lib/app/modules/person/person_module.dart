import 'person_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'person_page.dart';

class PersonModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PersonController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/:person_id',
            child: (_, args) => PersonPage(personId: args.params['person_id'])),
      ];

  static Inject get to => Inject<PersonModule>.of();
}
