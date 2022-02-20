import 'package:carrental/model/car_features.dart';

class CarModel {
  String catigoriya;
  String number;
  String name;
  String name2;
  String maxPower;
  String feul;
  String mph;
  String maxSpeed;

  CarFeatures features;
  CarModel(this.catigoriya, this.number, this.name, this.name2, this.maxPower,
      this.maxSpeed, this.feul, this.mph, this.features);
}

class CarDaliyModel {
  String comp;
  String name;
  String price;
  CarDaliyModel(this.comp, this.name, this.price);
}
