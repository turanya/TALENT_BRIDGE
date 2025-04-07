import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF1E88E5);
  static const Color secondaryColor = Color(0xFF64B5F6);
  static const Color accentColor = Color(0xFF0D47A1);
  static const Color primaryBlue = Color(0xFF1976D2);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color textColor = Color(0xFF333333);
  static const Color semiTransparentWhite = Color(0xE6FFFFFF);
  // Semi-transparent colors
  static const Color white90 = Color(0xE6FFFFFF); // 90% opacity
  static const Color white80 = Color(0xCCFFFFFF); // 80% opacity
  static const Color primaryColor20 = Color(0x331E88E5); // 20% opacity of primary
  
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, secondaryColor],
  );
  
  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, accentColor],
  );
  
  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [primaryColor, accentColor],
  );
}