
import 'dart:async';

import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/components/text.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/signup');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/person.jpg',
                  width: double.infinity,
                ),
                Positioned(
                  top: MyFont.kExtraBigFont,
                  left: getW(169),
                  child: Text(
                    MyTextSplash.splash,
                    style: MyTextStyle.MyTextStyle1(
                        color: ColorCont.balckColor,
                        fontWeight: FontWeight.bold,
                        fontSize: TextFont.splashFirstText),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              color: ColorCont.balckColor,
              child: Padding(
                padding: EdgeInsets.only(left: MarginPaddingFont.MediumFontW),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getW(MyFont.kExtraBigFont)),
                    Text(
                      MyTextSplash.splashBigText,
                      style: MyTextStyle.MyTextStyle1(
                          color: ColorCont.white,
                          fontSize: TextFont.splashTextBig),
                    ),
                    SizedBox(height: MyFont.kExtraSmallFont),
                    Text(
                      MyTextSplash.splashText,
                      style: MyTextStyle.MyTextStyle1(
                          color: ColorCont.splashPageSamllText,
                          fontSize: TextFont.splashMedium),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
