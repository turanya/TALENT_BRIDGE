import 'package:flutter/material.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import 'package:talent_bridge/constants/colors.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('University Analytics')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GradientCard(
              child: Column(
                children: [
                  const Text(
                    'Skill Gap Analysis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.white90,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text('Chart Visualization')),
               ) ],
              ),
            ),
            const SizedBox(height: 20),
            GradientCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Top Required Skills',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...['Flutter', 'AI/ML', 'Cloud Computing', 'Data Analysis']
                      .map((skill) => ListTile(
                            leading: const Icon(Icons.star, color: Colors.white),
                            title: Text(skill, style: const TextStyle(color: Colors.white)),
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}