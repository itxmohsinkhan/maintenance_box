import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maintenance_box/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                height: 70, width: 70, image: AssetImage('images/logo.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Maintenance',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xff2D3142)),
                ),
                Text(
                  'Box',
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xffF9703B)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
