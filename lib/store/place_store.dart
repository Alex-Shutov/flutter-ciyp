import 'dart:io';

import 'package:mobx/mobx.dart';

part 'place_store.g.dart';

class PlaceStore = _PlaceStore with _$PlaceStore;

abstract class _PlaceStore with Store {
  @observable
  String? imageUrl;

  @observable
  String? title;

  @observable
  String? task;

  @observable
  String? description;

  @observable
  String? address;

  @observable
  String? phoneNumber;

  @observable
  String? startDate;

  @observable
  String? endDate;

  @observable
  String? startTime;

    @observable
  String? endTime;

  @action
  void setPlaceInfo({
    required String imageUrl,
    required String title,
    required String description,
    required String address,
    required String phoneNumber,
    required String endDate,
    required String startDate,
    required String startTime,
    required String endTime,
    required String task,
  }) {
    this.imageUrl = imageUrl;
    this.title = title;
    this.description = description;
    this.endDate = endDate;
    this.startDate = startDate;
    this.startTime = startTime;
    this.endTime = endTime;
    this.address = address;
    this.task = task;
    this.phoneNumber = phoneNumber;
  }
}
