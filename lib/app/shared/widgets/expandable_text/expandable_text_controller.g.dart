// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expandable_text_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ExpandableTextController = BindInject(
  (i) => ExpandableTextController(),
  singleton: false,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExpandableTextController on _ExpandableTextControllerBase, Store {
  final _$isExpandedAtom =
      Atom(name: '_ExpandableTextControllerBase.isExpanded');

  @override
  bool get isExpanded {
    _$isExpandedAtom.reportRead();
    return super.isExpanded;
  }

  @override
  set isExpanded(bool value) {
    _$isExpandedAtom.reportWrite(value, super.isExpanded, () {
      super.isExpanded = value;
    });
  }

  final _$_ExpandableTextControllerBaseActionController =
      ActionController(name: '_ExpandableTextControllerBase');

  @override
  void setExpanded() {
    final _$actionInfo = _$_ExpandableTextControllerBaseActionController
        .startAction(name: '_ExpandableTextControllerBase.setExpanded');
    try {
      return super.setExpanded();
    } finally {
      _$_ExpandableTextControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isExpanded: ${isExpanded}
    ''';
  }
}
