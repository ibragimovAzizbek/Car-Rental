import 'package:carrental/model/data/user_data.dart';
import 'package:carrental/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:carrental/core/components/input.dart';
import 'package:carrental/core/components/size_config.dart';
import 'package:carrental/core/components/text.dart';
import 'package:carrental/core/constants/color.dart';
import 'package:carrental/core/constants/fonts.dart';
import 'package:carrental/widgets/textStyle.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController phoneController = TextEditingController(text: "+998");
  TextEditingController passwordContiroller = TextEditingController();
  

  bool isStatus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getH(68)),
            Text(
              MyTextSignIn.signIn,
              style: MyTextStyle.MyTextStyle1(
                  color: ColorCont.balckColor, fontSize: TextFont.signUp),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: getH(MyFont.signInBigFont)),
            inputMethod(MyTextSignUp.phoneNumber, phoneController,
                type: "number"),
            SizedBox(height: getH(24)),
            inputPasswd(MyTextSignUp.password, passwordContiroller),
            SizedBox(height: getH(20)),
            InkWell(
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
                for (UserModel user in UserData.userData) {
                  if (user.phoneNumber == phoneController.text &&
                      user.password == passwordContiroller.text) {
                    Navigator.pushReplacementNamed(context, '/homePage');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.redAccent,
                        content: Text("Password or number error."),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                }
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getW(76)),
              child: Row(
                children: [
                  const Text(MyTextSignIn.doNotAccount),
                  TextButton(
                    child: Text(
                      MyTextSignUp.signUp,
                      style: MyTextStyle.MyTextStyle1(
                          color: ColorCont.continueButtonColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
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

  Padding inputMethod(String text, controller, {String type = "text"}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
              textAlign: TextAlign.left),
          SizedBox(height: getH(10)),
          MyInput.textFormField(controller, type),
          SizedBox(height: getH(10)),
        ],
      ),
    );
  }

  Padding inputPasswd(
    String text,
    controller,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,
              style: MyTextStyle.MyTextStyle1(color: ColorCont.balckColor),
              textAlign: TextAlign.left),
          SizedBox(height: getH(10)),
          MyInput.textFormFieldPasswd(controller),
          SizedBox(height: getH(MyFont.kExtraLargeFont)),
        ],
      ),
    );
  }
}
