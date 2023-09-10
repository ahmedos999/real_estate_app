import 'dart:core';

class house {
  final String img;
  final String status;
  final String duration;
  final String name;
  final String location;
  final String numOfBed;
  final String numOfBath;
  final String numOfCars;
  final String type;
  final String price;

  house(
      {required this.img,
      required this.status,
      required this.duration,
      required this.name,
      required this.location,
      required this.numOfBed,
      required this.numOfBath,
      required this.numOfCars,
      required this.type,
      required this.price});
}
