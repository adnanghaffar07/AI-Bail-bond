import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool isRequired;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 14),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.primary, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.primary, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.primary, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.red, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ColorManager.primary, width: 1.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
