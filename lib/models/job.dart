class Job {
  final String id;
  final String title;
  final String company;
  final String description;
  final List<String> requiredSkills;
  final String location;
  final String type; // 'full-time', 'part-time', 'internship'

  Job({
    required this.id,
    required this.title,
    required this.company,
    required this.description,
    required this.requiredSkills,
    required this.location,
    required this.type,
  });
}