class User {
  final String id;
  final String name;
  final String email;
  final String role;
  final String college;
  final List<String> skills;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.college,
    required this.skills,
  });
}