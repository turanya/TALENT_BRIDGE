import 'package:flutter/material.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import 'package:talent_bridge/widgets/animated_button.dart';
import 'package:talent_bridge/constants/colors.dart';

class NewsletterScreen extends StatefulWidget {
  const NewsletterScreen({super.key});

  @override
  State<NewsletterScreen> createState() => _NewsletterScreenState();
}

class _NewsletterScreenState extends State<NewsletterScreen> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('University Newsletter'),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: AppColors.blueGradient),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GradientCard(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Send Updates to Students',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _controller,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'Enter your message here...',
                        filled: true,
                        fillColor: AppColors.white90,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedButton(
                      text: 'Send Newsletter',
                      onPressed: () {
                        if (_controller.text.isNotEmpty) {
                          // Send newsletter logic
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}