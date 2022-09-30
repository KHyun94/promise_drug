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
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/icons/ic_google_material_pills_w_48.svg',width: 120, height: 120,),
              const SizedBox(height: 36,),
              const Text("Promise Drug")
            ],
          )),
    );
  }
  
  @override
  void initState() {
    super.initState();

    // TODO 로그인 상태 체크, 권한체크, 네트워크 상태 체크
    Future.delayed(const Duration(milliseconds: 2000), () {

      Get.toNamed("/login");
    });
  }
}