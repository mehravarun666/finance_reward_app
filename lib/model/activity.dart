class Activity {
  final int id;
  final String description;
  final DateTime date;
  final int points;

  Activity({
    required this.id,
    required this.description,
    required this.date,
    required this.points,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'date': date.toIso8601String(),
      'points': points,
    };
  }

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      id: map['id'],
      description: map['description'],
      date: DateTime.parse(map['date']),
      points: map['points'],
    );
  }
}
