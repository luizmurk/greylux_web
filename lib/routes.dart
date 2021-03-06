import 'package:ennBee/pages/landing.dart';
import 'package:flutter/widgets.dart';
import 'package:ennBee/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LandingPage.routeName: (context) => LandingPage(),
  //SignInScreen.routeName: (context) => SignInScreen(),
  //ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  //SignUpScreen.routeName: (context) => SignUpScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
};
