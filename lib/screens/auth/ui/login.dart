import 'package:code_automation_agent_app/controllers/user_controller.dart';
import 'package:code_automation_agent_app/utills/responsive_utills.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final AuthController _controller = Get.put(AuthController());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Use the responsive utils to get adaptive padding
    final padding = ResponsiveUtils.adaptivePadding(context);

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use adaptiveTextStyle to scale font size
            Text(
              'Login to your account',
              style: ResponsiveUtils.adaptiveTextStyle(context,
                  fontSize: 20, color: Colors.blue),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              style: TextStyle(
                  fontSize: ResponsiveUtils.adaptiveTextSize(
                      context, 16)), // Adaptive text size
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              style: TextStyle(
                  fontSize: ResponsiveUtils.adaptiveTextSize(
                      context, 16)), // Adaptive text size
            ),
            SizedBox(height: 20),
            Obx(() {
              return _controller.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.signIn(
                            emailController.text, passwordController.text);
                      },
                      child: Text(
                        "Sign In",
                        style: ResponsiveUtils.adaptiveTextStyle(context,
                            fontSize: 18),
                      ),
                    );
            }),
            SizedBox(height: 20),
            // Example of dynamic text based on screen size
            Text(
              'Layout: ${ResponsiveUtils.getLayoutType(context)}',
              style: ResponsiveUtils.adaptiveTextStyle(context, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
