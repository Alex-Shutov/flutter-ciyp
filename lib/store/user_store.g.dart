// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserStore on _UserStore, Store {
  late final _$nameAtom = Atom(name: '_UserStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$surnameAtom = Atom(name: '_UserStore.surname', context: context);

  @override
  String get surname {
    _$surnameAtom.reportRead();
    return super.surname;
  }

  @override
  set surname(String value) {
    _$surnameAtom.reportWrite(value, super.surname, () {
      super.surname = value;
    });
  }

  late final _$emailAtom = Atom(name: '_UserStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$_UserStoreActionController =
      ActionController(name: '_UserStore', context: context);

  @override
  void changeName(String name) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.changeName');
    try {
      return super.changeName(name);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSurname(String surname) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.changeSurname');
    try {
      return super.changeSurname(surname);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String email) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.changeEmail');
    try {
      return super.changeEmail(email);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
surname: ${surname},
email: ${email}
    ''';
  }
}
