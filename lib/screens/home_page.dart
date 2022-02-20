import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/core/constants/pathPicture.dart';
import 'package:carrental/model/data/car_data.dart';
import 'package:carrental/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorCont.kPrimaryColorHomePage,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Search",
                      suffixIcon:
                          Icon(Icons.search, size: MyButtonFont.kBigFont)),
                ),
              ),
              SizedBox(
                height: getH(54),
              ),
              _carList(),
              Padding(
                padding: EdgeInsets.only(top: getH(40), left: getW(28)),
                child: Text(
                  "Available vehicles",
                  style: MyTextStyle.MyTextStyle1(color: ColorCont.barndBlack),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: getH(20)),
              InkWell(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorCont.carContainerColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      ),
                      margin: EdgeInsets.only(left: getW(24)),
                      height: getH(190),
                      width: getW(335),
                      child: Container(
                        margin: EdgeInsets.only(bottom: getH(69)),
                        width: getW(274),
                        height: getH(113),
                        child: Image.asset(
                          PathPicture.toyoto,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: getH(130), left: getW(36)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AYGO",
                            style: TextStyle(
                                color: ColorCont.balckColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: getH(11)),
                          Row(
                            children: [
                              iconsChild(PathIcon.greadbox, "A/T"),
                              iconsChild(PathIcon.userA, "5"),
                              iconsChild(PathIcon.carDoor, "4"),
                              iconsChild(PathIcon.sun, "A/C"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/detalis',
                      arguments: CarData.carData[0]);
                },
              ),
              Stack(
                children: [
                  Container(
                    width: getW(335),
                    height: getH(60),
                    decoration: BoxDecoration(
                        color: ColorCont.smallContainer,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                  ),
                  Positioned(
                    top: 10,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getW(MyFont.kBigFont)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textcha("Instant confirmation"),
                              SizedBox(height: getH(5)),
                              textcha("Free cancelation"),
                            ],
                          ),
                          SizedBox(
                            width: getW(142),
                          ),
                          Column(
                            children: [
                              Text(
                                "Day/",
                                style: MyTextStyle.MyTextStyle1(
                                    color: ColorCont.balckColor),
                              ),
                              SizedBox(height: getH(5)),
                              Text(
                                "\$250",
                                style: MyTextStyle.MyTextStyle1(
                                    color: ColorCont.continueButtonColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: getH(28)),
              Container(
                margin: EdgeInsets.only(left: MyButtonFont.kSmallFont),
                decoration: BoxDecoration(
                  color: ColorCont.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                height: 355,
                width: 354,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Toyota",
                            style: MyTextStyle.MyTextStyle1(
                              color: ColorCont.barndBlack,
                              fontSize: getW(34),
                            ),
                          ),
                          Text(
                            "\$350",
                            style: MyTextStyle.MyTextStyle1(
                              color: ColorCont.barndBlue,
                              fontSize: getW(34),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: getH(80)),
                    Image.asset(PathPicture.car)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: getW(24), top: getH(32)),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: ColorCont.rentNow,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      height: getH(58),
                      width: 383,
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: getH(18), right: getW(215)),
                        child: Text(
                          "Rent Now",
                          style: MyTextStyle.MyTextStyle1(
                              color: ColorCont.white, fontSize: 24.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 0,
                      child: Container(
                        height: getH(45),
                        width: getW(80),
                        decoration: BoxDecoration(
                          color: ColorCont.rentNow2,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getH(24), vertical: getH(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More Cars",
                      style: TextStyle(
                        color: ColorCont.moreCars,
                        fontSize: getW(18),
                      ),
                    ),
                    Text(
                      "See cars",
                      style: TextStyle(
                        color: ColorCont.barndBlue,
                        fontSize: getW(18),
                      ),
                    ),
                  ],
                ),
              ),
              _carList2(),
              Padding(
                padding: EdgeInsets.only(left: getW(20)),
                child: SizedBox(
                  width: getW(345),
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        leading:
                            Image.asset(PathPicture.carListVertikal[index]),
                        title: Text(DaliyData.daliyCar[index + 2].name),
                        subtitle: Row(
                          children: [
                            InkWell(
                              child: Image.asset(
                                PathIcon.menus,
                                color: ColorCont.kRed,
                              ),
                              onTap: () {
                                if (sum != 0) {
                                  sum -= 1;
                                } else {
                                  sum -= 1;
                                }
                                setState(() {});
                              },
                            ),
                            Text(
                              "$sum",
                              style: MyTextStyle.MyTextStyle1(
                                  color: ColorCont.balckColor),
                            ),
                            InkWell(
                              child: Image.asset(
                                PathIcon.plus,
                                color: ColorCont.kRed,
                              ),
                              onTap: () {
                                sum += 1;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                        trailing: Column(
                          children: [
                            InkWell(child: Image.asset(PathIcon.x)),
                            Text(
                              "80 DT/j",
                              style: MyTextStyle.MyTextStyle1(
                                  color: ColorCont.balckColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: ColorCont.white,
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  PathPicture.car7,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: ColorCont.balckColor,
        items: items,
        backgroundColor: ColorCont.balckColor,
      ),
    );
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Image.asset(PathIcon.discover, color: ColorCont.balckColor),
        label: "Discover"),
    BottomNavigationBarItem(
        icon: Image.asset(PathIcon.history, color: ColorCont.balckColor),
        label: "History"),
    BottomNavigationBarItem(
        icon: Image.asset(PathIcon.save, color: ColorCont.balckColor),
        label: "Saved"),
    BottomNavigationBarItem(
        icon: Image.asset(PathIcon.profile, color: ColorCont.balckColor),
        label: "Profile"),
  ];

  Text textcha(text) => Text(
        text,
        style: MyTextStyle.MyTextStyle1(
            color: ColorCont.balckColor, fontWeight: FontWeight.bold),
      );

  Row iconsChild(String icon, text) {
    return Row(
      children: [
        InkWell(
          child: Image.asset(
            icon,
          ),
        ),
        SizedBox(width: getW(8)),
        Text(
          text,
          style: MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
        ),
        SizedBox(width: getW(13)),
      ],
    );
  }

  SizedBox _carList() {
    return SizedBox(
      height: getH(165),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => Stack(
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: getW(28)),
                width: ContainerHiWe.width,
                height: ContainerHiWe.height,
                decoration: BoxDecoration(
                  color: ColorCont.containerFirstColor[index],
                  borderRadius: BorderRadius.circular(MyRadiues.yigirma),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/detalis',
                    arguments: CarData.carData[index]);
              },
            ),
            Positioned(
              top: 0,
              child: Image.asset(PathPicture.carPictures[index],
                  fit: BoxFit.cover),
            ),
            Positioned(
              bottom: getH(39),
              left: getH(65),
              child: Text(
                CarData.carData[index].catigoriya,
                style: MyTextStyle.MyTextStyle1(
                    color: index != 0 ? ColorCont.balckColor : ColorCont.white),
              ),
            ),
            Positioned(
              bottom: getH(20),
              left: getH(88),
              child: Text(
                CarData.carData[index].number,
                style: MyTextStyle.MyTextStyle1(
                    color: index != 0 ? ColorCont.balckColor : ColorCont.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _carList2() {
    return SizedBox(
      height: getH(270),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) => Stack(
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: getW(28)),
                width: ContainerHiWe.width2,
                height: ContainerHiWe.height2,
                decoration: BoxDecoration(
                  color: ColorCont.white,
                  borderRadius: BorderRadius.circular(MyRadiues.yigirma),
                ),
              ),
              onTap: () {}, // !!!!!!!!!!!!!
            ),
            Positioned(
                top: getH(16),
                left: getW(40),
                child: Text(DaliyData.daliyCar[index].name)),
            Positioned(top: getH(50), child: Image.asset(PathPicture.daliy)),
            Positioned(
              left: 45,
              bottom: 15,
              child: Column(
                children: [
                  Text(DaliyData.daliyCar[index].comp),
                  Text(DaliyData.daliyCar[index].price),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 15,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(getW(58), getH(24))),
                child: Text(
                  "Rent now",
                  style: MyTextStyle.MyTextStyle1(
                      color: ColorCont.white, fontSize: 12.0),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
