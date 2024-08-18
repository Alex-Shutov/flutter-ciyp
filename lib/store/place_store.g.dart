// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlaceStore on _PlaceStore, Store {
  late final _$imageUrlAtom =
      Atom(name: '_PlaceStore.imageUrl', context: context);

  @override
  String? get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String? value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$titleAtom = Atom(name: '_PlaceStore.title', context: context);

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$taskAtom = Atom(name: '_PlaceStore.task', context: context);

  @override
  String? get task {
    _$taskAtom.reportRead();
    return super.task;
  }

  @override
  set task(String? value) {
    _$taskAtom.reportWrite(value, super.task, () {
      super.task = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_PlaceStore.description', context: context);

  @override
  String? get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String? value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$addressAtom =
      Atom(name: '_PlaceStore.address', context: context);

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$phoneNumberAtom =
      Atom(name: '_PlaceStore.phoneNumber', context: context);

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$startDateAtom =
      Atom(name: '_PlaceStore.startDate', context: context);

  @override
  String? get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(String? value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  late final _$endDateAtom =
      Atom(name: '_PlaceStore.endDate', context: context);

  @override
  String? get endDate {
    _$endDateAtom.reportRead();
    return super.endDate;
  }

  @override
  set endDate(String? value) {
    _$endDateAtom.reportWrite(value, super.endDate, () {
      super.endDate = value;
    });
  }

  late final _$startTimeAtom =
      Atom(name: '_PlaceStore.startTime', context: context);

  @override
  String? get startTime {
    _$startTimeAtom.reportRead();
    return super.startTime;
  }

  @override
  set startTime(String? value) {
    _$startTimeAtom.reportWrite(value, super.startTime, () {
      super.startTime = value;
    });
  }

  late final _$endTimeAtom =
      Atom(name: '_PlaceStore.endTime', context: context);

  @override
  String? get endTime {
    _$endTimeAtom.reportRead();
    return super.endTime;
  }

  @override
  set endTime(String? value) {
    _$endTimeAtom.reportWrite(value, super.endTime, () {
      super.endTime = value;
    });
  }

  late final _$_PlaceStoreActionController =
      ActionController(name: '_PlaceStore', context: context);

  @override
  void setPlaceInfo(
      {required String imageUrl,
      required String title,
      required String description,
      required String address,
      required String phoneNumber,
      required String endDate,
      required String startDate,
      required String startTime,
      required String endTime,
      required String task}) {
    final _$actionInfo = _$_PlaceStoreActionController.startAction(
        name: '_PlaceStore.setPlaceInfo');
    try {
      return super.setPlaceInfo(
          imageUrl: imageUrl,
          title: title,
          description: description,
          address: address,
          phoneNumber: phoneNumber,
          endDate: endDate,
          startDate: startDate,
          startTime: startTime,
          endTime: endTime,
          task: task);
    } finally {
      _$_PlaceStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl},
title: ${title},
task: ${task},
description: ${description},
address: ${address},
phoneNumber: ${phoneNumber},
startDate: ${startDate},
endDate: ${endDate},
startTime: ${startTime},
endTime: ${endTime}
    ''';
  }
}
