import 'package:equatable/equatable.dart';

class Meal extends Equatable {
  final String id;
  final String name;
  final String? thumbnail;
  final String? instructions;
  final String? category;

  const Meal({
    required this.id,
    required this.name,
    this.thumbnail,
    this.instructions,
    this.category,
  });

  @override
  List<Object?> get props => [id, name, thumbnail, instructions, category];
}