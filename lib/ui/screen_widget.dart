import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight =
        MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
          child: _topLogoWidget(deviceWidth, deviceHeight)),
    );
  }

  Text logoComment = const Text.rich(TextSpan(text: "", children: <TextSpan>[
    TextSpan(
        text: "P", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
    TextSpan(
        text: "romise your\n",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.normal, color: Colors.grey)),
    TextSpan(
        text: "D",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.normal, color: Colors.grey)),
    TextSpan(
        text: "rugs",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
  ]));

  Widget _topLogoWidget(double width, double height) => Container(
    width: width,
    height: height,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset('assets/icons/ic_drug.svg',
            width: 200, height: 200),
        const Text(
          "🅿 🆁 🆄 🅶",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        logoComment,
      ],
    ),
  );


  @override
  void initState() {
    super.initState();

    // TODO 로그인 상태 체크, 권한체크, 네트워크 상태 체크
    Future.delayed(const Duration(milliseconds: 2000), () {

      Get.toNamed("/login");
    });
  }
}