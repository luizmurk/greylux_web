import 'package:ennBee/pages/forgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:ennBee/screens/splash/components/body.dart';
import 'package:ennBee/size_config.dart';
import 'package:ennBee/styleSheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    checking();
  }

  bool otpScreen = false;
  bool signinScreen = false;
  bool bodyScreen = false;

  Future<String> check() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isFirstTime = prefs.getBool('firstTime');
    if (isFirstTime != null && !isFirstTime) {
      print('enters here is first time');
      print(isFirstTime);
      var logged = prefs.getBool('logged');
      if (logged != null && logged) {
        print('enters here logged');
        print(logged);
        return 'otp';
        //return OtpBody();
      } else {
        print('enters here not logged');
        print(logged);
        return 'signin';
        //return SignInBody();
      }
    } else {
      print('goes here straight');
      prefs.setBool('first_time', false);
      return 'body';
      //return Body();
    }
  }

  checking() {
    print('checking');
    check().then((screen) {
      print('screen here');
      print(screen);
      if (screen == 'otp') {
        setState(() {
          otpScreen = true;
        });
        // return OtpBody();
      } else if (screen == 'signin') {
        setState(() {
          signinScreen = true;
        });
        //return SignInBody();
      } else {
        setState(() {
          bodyScreen = true;
        });
        //return Body();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: otpScreen
          ? ForgotPassword()
          : signinScreen
              ? ForgotPassword()
              : bodyScreen
                  ? ForgotPassword()
                  : Center(
                      child: Text('Loading',
                          style: TextStyle(color: Colors.white)),
                    ),
    );
  }
}

//  otpScreen
//           ? OtpBody()
//           : signinScreen
//           ? SignInBody()
//           : bodyScreen
//           ? Body()
//           : Center(
//               child: Text('Loading', style: TextStyle(color: Colors.white)),
//             ),
