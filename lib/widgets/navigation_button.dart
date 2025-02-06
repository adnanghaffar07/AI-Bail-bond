import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  final VoidCallback onPress;
  String? title;
  ForwardButton({super.key, required this.onPress, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: ElevatedButton(
              onPressed: onPress,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      title ?? 'Next',
                      textAlign: TextAlign.center, // Center the text
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                  if (title == null)
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: ColorManager.white, // Circle color
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward, // Forward arrow icon
                        color: ColorManager.primary, // Icon color inside circle
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
