import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';

class ForwardButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? title;
  final Color? backgroundColor; // For button background color
  final Color? arrowBackgroundColor; // For arrow background color
  final Color? arrowColor; // For the color of the arrow
  final Color? textColor; // For text color

  ForwardButton({
    super.key,
    required this.onPress,
    this.title,
    this.backgroundColor,
    this.arrowBackgroundColor,
    this.arrowColor,
    this.textColor,
  });

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
                backgroundColor: backgroundColor ??
                    ColorManager.primary, // Default to primary if not passed
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
                      title ?? 'Next', // Default text is 'Next'
                      textAlign: TextAlign.center, // Center the text
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: textColor ??
                            ColorManager
                                .white, // Default to white text if not passed
                      ),
                    ),
                  ),
                  if (title != null)
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: arrowBackgroundColor ??
                            ColorManager.white, // Default white if not passed
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward, // Forward arrow icon
                        color: arrowColor ??
                            ColorManager
                                .primary, // Default to primary color for arrow if not passed
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
