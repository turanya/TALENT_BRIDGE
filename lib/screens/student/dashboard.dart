import 'package:flutter/material.dart';
import 'package:talent_bridge/widgets/animated_button.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import 'package:talent_bridge/constants/colors.dart';
import 'package:talent_bridge/screens/student/job_matches.dart';
import 'package:talent_bridge/screens/student/resume_builder.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GradientCard(
              child: Column(
                children: [
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Your next career move starts here',
                    style: const TextStyle(
                      color: AppColors.white90,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            AnimatedButton(
              text: 'Build Your Resume',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResumeBuilderScreen()),
              ),
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            const Text(
              'Recommended Jobs',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => GradientCard(
                  padding: const EdgeInsets.all(12),
                  child: ListTile(
                    title: Text(
                      'Software Engineer ${index + 1}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Tech Company ${index + 1}',
                      style: const TextStyle(color: AppColors.white90),
                    ),
                    trailing: const Icon(Icons.arrow_forward, color: Colors.white),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const JobMatchesScreen()),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}