import 'package:carrental/model/car_model.dart';
import 'package:carrental/screens/detalis.dart';
import 'package:carrental/screens/home_page.dart';
import 'package:carrental/screens/sign_in.dart';
import 'package:carrental/screens/sign_up.dart';
import 'package:carrental/screens/splash_page.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenarateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const SignUp());
      case '/signin':
        return MaterialPageRoute(builder: (context) => const SignIn());
      case '/homePage':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/detalis':
        return MaterialPageRoute(
          builder: (context) => DetalisCar(
            car: (args as CarModel),
          ),
        );
    }
  }
}
