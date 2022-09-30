import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    final double deviceWidth = MediaQuery.of(context).size.width;
    final double deviceHeight =
        MediaQuery.of(context).size.height - statusBarHeight;

    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Column(
        children: <Widget>[
          topLogoWidget(deviceWidth, (deviceHeight / 2)),
          bottomLoginWidget(deviceWidth, (deviceHeight / 2))
        ],
      ),
    ));
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

  Widget topLogoWidget(double width, double height) => Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
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

  Widget bottomLoginWidget(double width, double height) => Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 36, right: 36, bottom: 24),
              child: Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                    width: 500,
                    child: const Divider(color: Colors.grey, thickness: 2.0)),
                Container(
                  padding: const EdgeInsets.all(4),
                  color: Colors.white,
                  child: const Text("로그인",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ]),
            ),
            loginButton(
              width,
              52,
              "카카오로 로그인하기",
              const EdgeInsets.only(left: 36, right: 36, bottom: 20),
            ),
            loginButton(
              width,
              52,
              "카카오로 로그인하기",
              const EdgeInsets.only(left: 36, right: 36, bottom: 36),
            )
          ],
        ),
      );

  Widget loginButton(
          double width, double height, String content, EdgeInsets margin) =>
      Container(
          margin: margin,
          width: width,
          height: 52,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Center(
              child: TextButton.icon(
                onPressed: () {},
                label: Text(content, style: const TextStyle(color: Colors.white, fontSize: 24)),
                icon: SvgPicture.asset("assets/icons/ic_kakao.svg", width: 24, height: 24, color: Colors.white),
          )));
}
