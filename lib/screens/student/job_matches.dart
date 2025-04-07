import 'package:flutter/material.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import '../../constants/colors.dart';
import '../../models/job.dart';

class JobMatchesScreen extends StatelessWidget {
  const JobMatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyJobs = List.generate(5, (index) => Job(
      id: index.toString(),
      title: 'Software Engineer ${index + 1}',
      company: 'Tech Corp ${index + 1}',
      description: 'Develop cutting-edge applications using Flutter',
      requiredSkills: ['Flutter', 'Dart', 'Firebase'],
      location: 'New York, NY',
      type: 'Full-time',
    ));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Job Matches'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyJobs.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GradientCard(
            child: ListTile(
              title: Text(
                dummyJobs[index].title,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                        dummyJobs[index].company,
                        style: const TextStyle(color: AppColors.white90)
                      ),
                      Text(
                        dummyJobs[index].location,
                        style: const TextStyle(color: AppColors.white90)
                      ),
                      Chip(
                    backgroundColor: AppColors.accentColor,
                    label: Text(dummyJobs[index].type,
                        style: const TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}