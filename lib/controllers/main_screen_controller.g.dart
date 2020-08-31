// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainScreenController on _MainScreenControllerBase, Store {
  final _$isSwitchedAtom = Atom(name: '_MainScreenControllerBase.isSwitched');

  @override
  bool get isSwitched {
    _$isSwitchedAtom.reportRead();
    return super.isSwitched;
  }

  @override
  set isSwitched(bool value) {
    _$isSwitchedAtom.reportWrite(value, super.isSwitched, () {
      super.isSwitched = value;
    });
  }

  final _$_MainScreenControllerBaseActionController =
      ActionController(name: '_MainScreenControllerBase');

  @override
  void turnSwitch() {
    final _$actionInfo = _$_MainScreenControllerBaseActionController
        .startAction(name: '_MainScreenControllerBase.turnSwitch');
    try {
      return super.turnSwitch();
    } finally {
      _$_MainScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSwitched: ${isSwitched}
    ''';
  }
}
