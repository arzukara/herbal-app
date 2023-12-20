import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:herbal_app/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int waitingTimeMillis = 3000;

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  checkAuth() async {
    moveTo() async {
      return Get.offAllNamed(CommonRouteNames.homeScreen);
    }

    int startTime = DateTime.now().toUtc().millisecondsSinceEpoch;

    int endTime = DateTime.now().toUtc().millisecondsSinceEpoch;
    int differenceTime = endTime - startTime;

    if (differenceTime > waitingTimeMillis) {
      moveTo();
    } else {
      await Future.delayed(
          Duration(milliseconds: waitingTimeMillis - differenceTime));
      moveTo();
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                "assets/img/trace.svg",
                width: MediaQuery.of(context).size.width * 0.85,
                fit: BoxFit.cover,
              ),
            ),
            Center(
                child: SvgPicture.asset(
              "assets/img/img_logo.svg",
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * 0.88,
            )),
          ],
        ),
      );
}
