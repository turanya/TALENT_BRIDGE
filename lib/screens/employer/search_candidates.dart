import 'package:flutter/material.dart';
import 'package:talent_bridge/models/user.dart';
import 'package:talent_bridge/widgets/gradient_card.dart';
import 'package:talent_bridge/constants/colors.dart';

class SearchCandidatesScreen extends StatelessWidget {
  static const List<User> dummyCandidates = [
    User(
      id: '1',
      name: 'John Doe',
      email: 'john@example.com',
      role: 'student',
      college: 'Tech University',
      skills: ['Flutter', 'Dart', 'Firebase'],
    ),
    User(
      id: '2',
      name: 'Jane Smith',
      email: 'jane@example.com',
      role: 'student',
      college: 'Design Institute',
      skills: ['UI/UX', 'Figma', 'Prototyping'],
    ),
  ];

  const SearchCandidatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Candidates'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: AppColors.blueGradient),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search by skills or name',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dummyCandidates.length,
                itemBuilder: (context, index) {
                  final candidate = dummyCandidates[index];
                  return GradientCard(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          candidate.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          candidate.college, 
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 8,
                          children: [
                            ...candidate.skills.map((skill) => Chip(
                              label: Text(skill),
                              backgroundColor: AppColors.primaryBlue,
                            ))
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}