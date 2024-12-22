import 'package:finance_reward/screens/tabs.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              const Spacer(),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: Text(
                      "Track Your Spending Effortlessly",
                      textAlign: TextAlign.left ,
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Manage your finances easily using our intuitive and user-friendly interface and set financial goals and monitor your progress",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
               Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.green.shade300,fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.green.shade900,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green.shade900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
