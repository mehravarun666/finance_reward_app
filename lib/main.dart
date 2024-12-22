import 'package:finance_reward/screens/tabs/home.dart';
import 'package:finance_reward/screens/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/activity_provider.dart';

void main() {
  runApp(const FinancialRewardApp());
}

class FinancialRewardApp extends StatelessWidget {
  const FinancialRewardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ActivityProvider(),
      child: MaterialApp(
        title: 'Financial Reward Tracker',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: IntroScreen(),
      ),
    );
  }
}
