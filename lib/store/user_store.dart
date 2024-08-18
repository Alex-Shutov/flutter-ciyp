import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pocket/utils/enums/screen_ids.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store{
  @observable
  String name = '';
  @observable
  String surname='';
  @observable
  String email='';

  @action
  void changeName(String name){
    this.name = name;
  }

  @action
  void changeSurname(String surname){
    this.surname = surname;
  }
  @action
  void changeEmail(String email){
    this.email = email;
  }
}