import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class MyButton {
  static InkWell continueButton(context, formKey) => InkWell(
        child: Container(
          height: getH(MyButtonFont.kMediumFont),
          width: getW(MyButtonFont.kExtraBigFont),
          decoration: BoxDecoration(
              color: ColorCont.continueButtonColor,
              borderRadius:
                  BorderRadius.circular(MyRadiues.kExtraSmallRadiues)),
          child: Center(
            child: Text(
              "Continue",
              style: MyTextStyle.MyTextStyle1(color: ColorCont.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        onTap: () {
          if (formKey.currentState!.valiadate()) {
            Navigator.pushReplacementNamed(context, '/homePage');
          }
        },
      );
}
