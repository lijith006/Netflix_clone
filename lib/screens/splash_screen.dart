import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone01/widgets/user_selection.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => UserSelection(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset("assets/netflix.json"),
    );
  }
}
