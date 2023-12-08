class User {
  final String name;
  final String email;
  final String genre;
  final String description;
  final DateTime age;
  final String role;
  final List<String> programmingLanguages;
  final List<String> personalities;

  User({
    required this.name,
    required this.email,
    required this.genre,
    required this.description,
    required this.age,
    required this.role,
    required this.programmingLanguages,
    required this.personalities,
  });
}
