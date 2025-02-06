import 'dart:ui';
import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF83A4D4),
                Color(0xFFB4F7FD),
                Color(0xFFB6FBFF),
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          width: double.infinity,
        ),
        Positioned(
          left: 0,
          top: 0,
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 70.0, left: 20.0),
              child: Icon(
                Icons.arrow_back,
                color: ColorManager.primary,
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Center(
            child: SizedBox(
              height: 100,
              width: 170,
              child: SvgPicture.asset(
                'assets/icons/fingerprint_icon.svg',
                colorFilter: const ColorFilter.mode(
                  ColorManager.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
