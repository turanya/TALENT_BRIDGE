import 'package:flutter/material.dart';
import '../../widgets/gradient_card.dart';
import '../../constants/colors.dart';

class SkillGapsScreen extends StatelessWidget {
  const SkillGapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skill Gap Analysis'),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: AppColors.blueGradient),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GradientCard(
              child: Column(
                children: [
                  const Text(
                    'Identified Skill Gaps',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  DataTable(
                    columns: const [
                      DataColumn(label: Text('Skill', style: TextStyle(color: Colors.white))),
                      DataColumn(label: Text('Gap Score', style: TextStyle(color: Colors.white))),
                    ],
                    rows: const [
                      DataRow(cells: [
                        DataCell(Text('AI/ML', style: TextStyle(color: Colors.white))),
                        DataCell(Text('High', style: TextStyle(color: Colors.white))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Cloud Computing', style: TextStyle(color: Colors.white))),
                        DataCell(Text('Medium', style: TextStyle(color: Colors.white))),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Cybersecurity', style: TextStyle(color: Colors.white))),
                        DataCell(Text('High', style: TextStyle(color: Colors.white))),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GradientCard(
              child: Column(
                children: [
                  const Text(
                    'Recommended Actions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ...['Add AI/ML courses', 'Partner with cloud providers', 'Cybersecurity workshops']
                      .map((action) => ListTile(
                            leading: const Icon(Icons.check_circle, color: Colors.white),
                            title: Text(action, style: const TextStyle(color: Colors.white)),
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