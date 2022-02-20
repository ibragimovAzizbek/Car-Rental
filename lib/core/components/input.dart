import 'package:carrental/core/constants/color.dart';
import 'package:flutter/material.dart';

class MyInput {
  static TextFormField textFormField(Controller, text, ) => TextFormField(
        controller: Controller,
        autofocus: true,
        keyboardType:
            text == "number" ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "Bo'sh joylarni to'ldiring.";
          }
        },
      );

  static TextFormField textFormFieldPasswd(Controller) => TextFormField(
        controller: Controller,
        autofocus: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: ColorCont.balckColor,
            ),
            onPressed: () {},
          ),
        ),
        validator: (value) {
          if (value!.length <= 5) {
            return 'Password 5 tadan kam bo\'lmasin';
          }
        },
      );
}
