import 'package:flutter/material.dart';
import '../constants/colors.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double borderRadius;

  const GradientCard({
    required this.child,
    this.padding,
    this.borderRadius = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: const [
          BoxShadow(
            color: AppColors.primaryColor20,
            blurRadius: 10,
            offset: Offset(0, 5),
      )],
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}