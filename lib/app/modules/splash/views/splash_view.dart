import 'dart:async';
import 'package:final_project/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => HomeView()), (route) => false);
      },
    );
    // TODO: implement initState
    super.initState();
  }

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.deepOrange),
        child: Center(
          child: Hero(
            tag: "logo",
            child: Image.asset(
              "assets/images/whitelogo.png",
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
