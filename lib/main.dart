import 'package:flutter/material.dart';
import 'package:talent_bridge/screens/auth/login_screen.dart';
import 'constants/colors.dart';

void main() {
  runApp(const TalentBridgeApp());
}

class TalentBridgeApp extends StatelessWidget {
  const TalentBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Talent Bridge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}