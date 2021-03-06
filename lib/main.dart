import 'package:lumyvest/pages/landing.dart';
import 'package:flutter/material.dart';
import 'package:lumyvest/routes.dart';
import 'package:lumyvest/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    new MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ennBeee',
      //theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: LandingPage.routeName,
      routes: routes,
    );
  }
}
