import 'dart:ui';

import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/core/constants/pathPicture.dart';
import 'package:carrental/model/car_model.dart';
import 'package:flutter/material.dart';

class DetalisCar extends StatefulWidget {
  final CarModel car;
  const DetalisCar({Key? key, required this.car}) : super(key: key);

  @override
  _DetalisCarState createState() => _DetalisCarState();
}

class _DetalisCarState extends State<DetalisCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.car.name2,
                  style: TextStyle(
                      color: ColorCont.balckColor,
                      fontSize: getW(28),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getH(10)),
                Text(
                  widget.car.name,
                  style: TextStyle(fontSize: getW(14)),
                ),
                SizedBox(
                  width: getW(436),
                  height: getH(180),
                  child: Image.asset(
                    PathPicture.toyoto,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: getH(40)),
                Text(
                  "Specifications",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getW(18),
                      color: ColorCont.balckColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 20),
                  child: Row(
                    children: [
                      _container(
                          'Max Power', PathIcon.charging, widget.car.maxPower),
                      _container('Fuel', PathIcon.petrol, widget.car.feul),
                      _container('0-60 mph', PathIcon.wind, widget.car.mph),
                      _container(
                          'Max Speed', PathIcon.speed, widget.car.maxSpeed),
                    ],
                  ),
                ),
                SizedBox(height: getH(24)),
                Text(
                  "Car Features",
                  style: TextStyle(
                    color: ColorCont.balckColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: getH(21)),
                Padding(
                  padding: EdgeInsets.only(right: getW(30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carFeature(PathIcon.userAccountY, "2 Passengers"),
                          SizedBox(height: getH(17)),
                          carFeature(PathIcon.winterY, "Snow Tires"),
                          SizedBox(height: getH(17)),
                          carFeature(PathIcon.bluetoothY, "Bluetooth"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          carFeature(PathIcon.carDoorY, "4 Doors"),
                          SizedBox(height: getH(17)),
                          carFeature(PathIcon.gPS, "GPS"),
                          SizedBox(height: getH(17)),
                          carFeature(PathIcon.bookY, "Manual"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getH(60)),
                bookNowContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack bookNowContainer() {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          color: ColorCont.balckColor,
          height: getH(100),
          width: double.infinity,
        ),
        Positioned(
          top: 22,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: TextStyle(
                    color: ColorCont.moreCars, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: getH(8)),
              Text(
                "\$250/Day",
                style: TextStyle(
                    color: ColorCont.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Positioned(
          right: 40,
          top: 20,
          child: InkWell(
            child: Container(
              width: getW(117),
              height: getH(50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorCont.continueButtonColor),
              child: Center(
                child: Text("Book Now",
                    style: TextStyle(
                        color: ColorCont.white, fontWeight: FontWeight.bold)),
              ),
            ),
            onTap: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: InkWell(
                      child: Image.asset(
                        'assets/images/3.png',
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                );
              });
            },
          ),
        ),
      ],
    );
  }

  Column carFeature(icon, text) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(icon),
            SizedBox(width: getW(8)),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.0,
                  color: ColorCont.balckColor,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }

  Container _container(text, icon, value) => Container(
        margin: const EdgeInsets.only(right: 10),
        width: getW(76),
        height: getH(76),
        decoration: BoxDecoration(
          border: Border.all(color: ColorCont.containers),
          borderRadius: BorderRadius.circular(MyRadiues.kSmallRadiues),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(icon),
              SizedBox(height: getH(10)),
              Text(text, style: const TextStyle(fontSize: 10)),
              SizedBox(height: getH(4)),
              Text(value, style: const TextStyle(fontSize: 10))
            ],
          ),
        ),
      );
}
