import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'expandable_text_controller.g.dart';

@Injectable(singleton: false)
class ExpandableTextController = _ExpandableTextControllerBase
    with _$ExpandableTextController;

abstract class _ExpandableTextControllerBase with Store {
  @observable
  bool isExpanded = false;

  @action
  void setExpanded() {
    isExpanded = !isExpanded;
    print(isExpanded);
  }
}
