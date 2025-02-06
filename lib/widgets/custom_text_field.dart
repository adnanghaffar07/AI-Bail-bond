import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final bool isRequired;
  final bool isPasswordField;
  final bool showMessageIcon;
  final String? messageText;
  final TextEditingController? controller;
  final bool isFilled;
  final Color fillColor;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.isRequired = false,
    this.isPasswordField = false,
    this.showMessageIcon = false,
    this.messageText,
    this.controller,
    this.isFilled = false,
    this.fillColor = Colors.transparent,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: widget.controller,
          obscureText: widget.isPasswordField ? _obscureText : false,
          decoration: InputDecoration(
            labelText: widget.labelText + (widget.isRequired ? ' *' : ''),
            labelStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 14),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.primary, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.primary, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.primary, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ColorManager.red, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorManager.primary, width: 1.5),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: widget.isFilled,
            fillColor: widget.fillColor,
            suffixIcon: widget.isPasswordField
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: ColorManager.primary,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,
          ),
        ),
        if (widget.showMessageIcon && widget.messageText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: ColorManager.primary,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  widget.messageText!,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
