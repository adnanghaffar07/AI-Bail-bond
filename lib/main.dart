import 'package:code_automation_agent_app/bindings/auth_binding.dart';
import 'package:code_automation_agent_app/screens/auth/ui/login.dart';
import 'package:code_automation_agent_app/startUp/splash_screen.dart';
import 'package:code_automation_agent_app/utills/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseConfig.firebaseOptions);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Code Automation Agent App',
      initialBinding: AuthBinding(),
      home: const SplashScreen(),
    );
  }
}
