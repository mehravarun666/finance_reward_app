// providers/activity_provider.dart
import 'package:finance_reward/model/activity.dart';
import 'package:flutter/material.dart';
import '../services/db_helper.dart';

class ActivityProvider extends ChangeNotifier {
  final List<Activity> _activities = [];
  int _totalPoints = 0;

  List<Activity> get activities => [..._activities];
  int get totalPoints => _totalPoints;


  Future<void> fetchActivities() async {
    try {
      final data = await DBHelper.getActivities();
      _activities.clear();
      _activities.addAll(data);
      _calculateTotalPoints();
    } catch (error) {
      print('Error fetching activities: $error'); // Log the error
    }
    notifyListeners();
  }


  Future<void> addActivity(String description) async {
    try {
      final newActivity = Activity(
        id: DateTime.now().millisecondsSinceEpoch,
        description: description,
        date: DateTime.now(),
        points: 10,
      );
      print("Adding new activity: ${newActivity.toMap()}");
      await DBHelper.insertActivity(newActivity);
      _activities.add(newActivity);
      _applyBonusPoints();
      notifyListeners();
    } catch (error) {
      print('Error adding activity: $error');
    }
  }


  void _calculateTotalPoints() {
    _totalPoints = _activities.fold(0, (sum, item) => sum + item.points);
  }

  void _applyBonusPoints() {
    final todayActivities = _activities
        .where((a) => a.date.day == DateTime.now().day)
        .toList();
    if (todayActivities.length > 3) {
      _totalPoints += 20; // Bonus points
    }
  }
}
