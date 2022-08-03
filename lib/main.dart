import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crmcodinga/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: AnimatedSplashScreen(backgroundColor: Color(0xff010031),
        splash: Center(

          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Align(

              alignment: Alignment.center,
              child: Image.asset(
                "assets/image/codinga logo.png",
                // fit: BoxFit.cover,
                height: double.infinity,
                width:  double.infinity,
              ),
            ),
          ),
        ),
        nextScreen:  BottomTapBar(),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        pageTransitionType: PageTransitionType.bottomToTop,
      ),


    );
  }
}
