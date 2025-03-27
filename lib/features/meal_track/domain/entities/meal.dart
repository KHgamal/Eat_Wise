class MealTrack {
  final String id;
  final String name;
  final int calories;
  final DateTime time;
  final String? photoPath;

  MealTrack({
    required this.id,
    required this.name,
    required this.calories,
    required this.time,
    this.photoPath,
  });
}
