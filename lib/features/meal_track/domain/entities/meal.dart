class Meal {
  final String id;
  final String name;
  final int calories;
  final DateTime time;
  final String? photoPath;

  Meal({
    required this.id,
    required this.name,
    required this.calories,
    required this.time,
    this.photoPath,
  });
}
