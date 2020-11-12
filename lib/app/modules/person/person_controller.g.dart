// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $PersonController = BindInject(
  (i) => PersonController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonController on _PersonControllerBase, Store {
  Computed<String> _$birthdayComputed;

  @override
  String get birthday =>
      (_$birthdayComputed ??= Computed<String>(() => super.birthday,
              name: '_PersonControllerBase.birthday'))
          .value;

  final _$detailsAtom = Atom(name: '_PersonControllerBase.details');

  @override
  PersonDetailsModel get details {
    _$detailsAtom.reportRead();
    return super.details;
  }

  @override
  set details(PersonDetailsModel value) {
    _$detailsAtom.reportWrite(value, super.details, () {
      super.details = value;
    });
  }

  final _$creditsAtom = Atom(name: '_PersonControllerBase.credits');

  @override
  PersonMovieCreditsModel get credits {
    _$creditsAtom.reportRead();
    return super.credits;
  }

  @override
  set credits(PersonMovieCreditsModel value) {
    _$creditsAtom.reportWrite(value, super.credits, () {
      super.credits = value;
    });
  }

  final _$hasDetailsAtom = Atom(name: '_PersonControllerBase.hasDetails');

  @override
  bool get hasDetails {
    _$hasDetailsAtom.reportRead();
    return super.hasDetails;
  }

  @override
  set hasDetails(bool value) {
    _$hasDetailsAtom.reportWrite(value, super.hasDetails, () {
      super.hasDetails = value;
    });
  }

  final _$hasCreditsAtom = Atom(name: '_PersonControllerBase.hasCredits');

  @override
  bool get hasCredits {
    _$hasCreditsAtom.reportRead();
    return super.hasCredits;
  }

  @override
  set hasCredits(bool value) {
    _$hasCreditsAtom.reportWrite(value, super.hasCredits, () {
      super.hasCredits = value;
    });
  }

  final _$getPersonDetailsAsyncAction =
      AsyncAction('_PersonControllerBase.getPersonDetails');

  @override
  Future getPersonDetails(int id) {
    return _$getPersonDetailsAsyncAction.run(() => super.getPersonDetails(id));
  }

  final _$getPersonCreditsAsyncAction =
      AsyncAction('_PersonControllerBase.getPersonCredits');

  @override
  Future getPersonCredits(int id) {
    return _$getPersonCreditsAsyncAction.run(() => super.getPersonCredits(id));
  }

  @override
  String toString() {
    return '''
details: ${details},
credits: ${credits},
hasDetails: ${hasDetails},
hasCredits: ${hasCredits},
birthday: ${birthday}
    ''';
  }
}
