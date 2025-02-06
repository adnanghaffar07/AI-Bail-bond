import 'package:code_automation_agent_app/controllers/sign_up_controller.dart';
import 'package:code_automation_agent_app/screens/auth/ui/sign_up/sign_up_three.dart';
import 'package:code_automation_agent_app/widgets/auth_header.dart';
import 'package:code_automation_agent_app/widgets/custom_text_field.dart';
import 'package:code_automation_agent_app/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreenTwo extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(), // Header is not scrollable
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 32.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: _buildForm(), // The form is scrollable
              ),
            ),
          ),
          const SizedBox(height: 20),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(labelText: 'Home Address'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: CustomTextField(labelText: 'Country'),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: CustomTextField(labelText: 'Province'),
            ),
          ],
        ),
        SizedBox(height: 20),
        ForwardButton(
          onPress: () {
            Get.to(SignUpScreenThree());
          },
        )
      ],
    );
  }
}
