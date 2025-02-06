import 'package:code_automation_agent_app/controllers/user_controller.dart';
import 'package:code_automation_agent_app/utills/color_manager.dart';
import 'package:code_automation_agent_app/utills/responsive_utills.dart';
import 'package:code_automation_agent_app/widgets/custom_text_field.dart';
import 'package:code_automation_agent_app/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        body: Stack(
      children: [
        // SVG background covering the entire screen
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/icons/login_background.svg', // Replace with your SVG asset path
            fit: BoxFit.cover, // Ensure the SVG covers the entire screen
          ),
        ),
        Padding(
          padding: padding,
          child: Column(
            children: [
              const SizedBox(height: 70),
              SizedBox(
                height: 100,
                width: 170,
                child: SvgPicture.asset(
                  'assets/icons/fingerprint_icon.svg',
                  colorFilter: const ColorFilter.mode(
                    ColorManager.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign Up",
                    style: ResponsiveUtils.adaptiveTextStyle(
                      context,
                      color: ColorManager.white,
                      fontSize: 24, // Larger font size for "Sign Up"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextField(
                  labelText: 'Email',
                  isRequired: true,
                  controller: emailController,
                  isFilled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomTextField(
                  labelText: 'Password',
                  isRequired: true,
                  isPasswordField: true,
                  controller: passwordController,
                  isFilled: true,
                  fillColor: Colors.white,
                  showMessageIcon: true,
                  messageText: 'Password must be at least 8 characters long.',
                ),
              ),
              const SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Obx(() {
                          return Transform.scale(
                            scale: 0.8,
                            child: Switch(
                              value: _controller.isRemembered.value,
                              onChanged: (value) {
                                _controller.isRemembered.value = value;
                              },
                              activeColor: ColorManager.green,
                            ),
                          );
                        }),
                        Text(
                          'Remember Me',
                          style: ResponsiveUtils.adaptiveTextStyle(
                            context,
                            color: ColorManager.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        // Handle forgot password logic
                      },
                      child: Text(
                        'Forgot Password?',
                        style: ResponsiveUtils.adaptiveTextStyle(
                          context,
                          color: ColorManager.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              // Sign In Button
              // Obx(() {
              //   return _controller.isLoading.value
              //       ? const CircularProgressIndicator()
              //       : ElevatedButton(
              //           onPressed: () {
              //             _controller.signIn(
              //               emailController.text,
              //               passwordController.text,
              //             );
              //           },
              //           style: ElevatedButton.styleFrom(
              //             backgroundColor: ColorManager.primary,
              //             padding: const EdgeInsets.symmetric(
              //               horizontal: 40,
              //               vertical: 12,
              //             ),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(10),
              //             ),
              //           ),
              //           child: Text(
              //             "Sign In",
              //             style: ResponsiveUtils.adaptiveTextStyle(
              //               context,
              //               color: ColorManager.white,
              //               fontSize: 18,
              //             ),
              //           ),
              //         );
              // }),

              ForwardButton(
                onPress: () {
                  // Handle button press
                },
                title: "Login", // Custom text
                backgroundColor: ColorManager.white, // Custom background color
                arrowBackgroundColor:
                    ColorManager.primary, // Custom arrow background color
                arrowColor: ColorManager.white, // Custom arrow color
                textColor: Colors.black, // Custom text color
              ),
              const SizedBox(height: 20),
              // Example of dynamic text based on screen size
              // Text(
              //   'Layout: ${ResponsiveUtils.getLayoutType(context)}',
              //   style: ResponsiveUtils.adaptiveTextStyle(
              //     context,
              //     color: ColorManager.white,
              //     fontSize: 16,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}
