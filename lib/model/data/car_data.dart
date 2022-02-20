import 'package:carrental/model/car_features.dart';
import 'package:carrental/model/car_model.dart';

class CarData {
  static List<CarModel> carData = [
    CarModel(
      "Standart",
      "56",
      "Tayotto",
      "AYGO",
      "320 hp",
      "177 mph",
      "550 km",
      "2.6 sec",
      CarFeatures(
        "2 Passengers",
        "Snow Tires",
        "Bluetooth",
        "4 Doors",
        "GPS",
        "Manual",
      ),
    ),
    //? ikki
    CarModel(
      "Prestige",
      "22",
      "Tayotto",
      "AYGO",
      "320 hp",
      "177 mph",
      "550 km",
      "2.6 sec",
      CarFeatures(
        "2 Passengers",
        "Snow Tires",
        "Bluetooth",
        "4 Doors",
        "GPS",
        "Manual",
      ),
    ),
    //? uchinchi
    CarModel(
      "Standart",
      "56",
      "Tayotto",
      "AYGO",
      "320 hp",
      "177 mph",
      "550 km",
      "2.6 sec",
      CarFeatures(
        "2 Passengers",
        "Snow Tires",
        "Bluetooth",
        "4 Doors",
        "GPS",
        "Manual",
      ),
    ),
  ];
}

class DaliyData {
  static List<CarDaliyModel> daliyCar = [
    CarDaliyModel("Daliy", "Porsche Cayman", "\$ 2500"),
    CarDaliyModel("Daliy", "Mercedes AMG", "\$ 1000"),
    //?
    CarDaliyModel("Daliy", "Cabriolet brabus r...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow Prime Coup...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow passion rest...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow brabus Cou...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow Prime Coup...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow passion cou...", "\$ 1000"),
    CarDaliyModel("Daliy", "Fortow pure coupé...", "\$ 1000"),
  ];
}
