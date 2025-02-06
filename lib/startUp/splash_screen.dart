import 'package:code_automation_agent_app/screens/auth/ui/sign_up/sign_up_one.dart';
import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => SignUpScreenOne());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Center(
        child: SvgPicture.asset(
          'assets/icons/app_logo.svg',
          width: 222,
          height: 140.0,
        ),
      ),
    );
  }
}
