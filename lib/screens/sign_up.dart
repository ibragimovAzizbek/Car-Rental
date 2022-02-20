import 'package:carrental/core/components/decorition.dart';
import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/components/text.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/model/data/user_data.dart';
import 'package:carrental/model/user_model.dart';
import 'package:carrental/widgets/textStyle.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firtNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController(text: "+998");
  TextEditingController passwordContiroller = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getH(68)),
            Text(
              MyTextSignUp.signUp,
              style: MyTextStyle.MyTextStyle1(
                  color: ColorCont.balckColor, fontSize: TextFont.signUp),
              textAlign: TextAlign.center,
            ),
            formInputs(),
            SizedBox(height: getH(24)),
            InkWell(
              child: Container(
                height: getH(MyButtonFont.kMediumFont),
                width: getW(MyButtonFont.kExtraBigFont),
                decoration: BoxDecoration(
                  color: ColorCont.continueButtonColor,
                  borderRadius:
                      BorderRadius.circular(MyRadiues.kExtraSmallRadiues),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: MyTextStyle.MyTextStyle1(color: ColorCont.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              onTap: () {
                if (formKey.currentState!.validate()) {
                  UserData.userData.add(UserModel(
                      firtNameController.text,
                      lastNameController.text,
                      phoneController.text,
                      passwordContiroller.text));
                  Navigator.pushReplacementNamed(context, '/homePage');
                }
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getW(76)),
              child: Row(
                children: [
                  const Text("Already have an account?"),
                  TextButton(
                    child: Text(
                      "Login in",
                      style: MyTextStyle.MyTextStyle1(
                          color: ColorCont.continueButtonColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding formInputs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(MyTextSignUp.firstName,
                    style:
                        MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
                    textAlign: TextAlign.left),
                SizedBox(height: getH(10)),
                TextFormField(
                  controller: firtNameController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: MyDecorition.decoration,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "First Nameni to'ldiring.";
                    }
                  },
                ),
                SizedBox(height: getH(10)),
              ],
            ), // ?
            SizedBox(height: getH(24)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(MyTextSignUp.lastName,
                    style:
                        MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
                    textAlign: TextAlign.left),
                SizedBox(height: getH(10)),
                TextFormField(
                  controller: lastNameController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: MyDecorition.decoration,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Last Nameni to'ldiring.";
                    }
                  },
                ),
                SizedBox(height: getH(10)),
              ],
            ),
            SizedBox(height: getH(24)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(MyTextSignUp.phoneNumber,
                    style:
                        MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
                    textAlign: TextAlign.left),
                SizedBox(height: getH(10)),
                TextFormField(
                  controller: phoneController,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: MyDecorition.decoration,
                  validator: (value) {
                    if (value!.length <= 4) {
                      return "Telifon raqamingizni to'ldiring.";
                    }
                  },
                ),
                SizedBox(height: getH(10)),
              ],
            ), // ? 4
            SizedBox(height: getH(24)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(MyTextSignUp.password,
                    style:
                        MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
                    textAlign: TextAlign.left),
                SizedBox(height: getH(10)),
                TextFormField(
                  controller: passwordContiroller,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: MyDecorition.decoration,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Passwordni to'ldiring.";
                    }
                  },
                ),
                SizedBox(height: getH(10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
