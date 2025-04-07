import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AnimatedButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;

  const AnimatedButton({
    required this.text,
    required this.onPressed,
    this.width = 200,
    super.key,
  });

  @override
  State<AnimatedButton> createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedButton> 
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        controller.reverse();
        widget.onPressed();
      },
      onTapCancel: () => controller.reverse(),
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Container(
          width: widget.width,
          height: 50,
          decoration: BoxDecoration(
            gradient: AppColors.buttonGradient,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withAlpha(76),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}