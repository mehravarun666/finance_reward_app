import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../providers/activity_provider.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> activities = [
      {'name': 'Dribbble', 'date': 'Today, 16:32', 'amount': '-\$120', 'type': 'Transfer'},
      {'name': 'Wilson Mango', 'date': 'Today, 10:12', 'amount': '-\$240', 'type': 'Transfer'},
      {'name': 'Abram Botosh', 'date': 'Yesterday', 'amount': '+\$450', 'type': 'Income'},
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi, Jonathan",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Lottie.asset('assets/animations/coin.json', width: 20),
                          const SizedBox(width: 5),
                          const Text("220")
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          "assets/icons/bell-ring.png",
                          scale: 20,
                        ),
                        Positioned(
                          right: -4,
                          top: -4,
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Text(
                              "6",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Wallet Balance",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            Row(
              children: [
                const Text(
                  "\$17298.92",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 20),
                Image.asset(
                  "assets/icons/eye.png",
                  scale: 20,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[100],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/card1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/card2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/send.png",
                        scale: 16,
                        color: Colors.green[100],
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        "Send",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green[100],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[300],
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/recieve.png",
                        scale: 16,
                        color: Colors.green[900],
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        "Receive",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.green[800],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[100],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.grid_view_rounded,
                      color: Colors.green[800],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recent Activity',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('See Details'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: activities.length,
                      itemBuilder: (context, index) {
                        final activity = activities[index];
                        final initials = activity['name']!
                            .split(' ')
                            .map((word) => word[0])
                            .take(2)
                            .join();
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green.shade100,
                            child: Text(
                              initials,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          title: Text(activity['name']!),
                          subtitle: Text(activity['date']!),
                          trailing: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                activity['amount']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: activity['amount']!.startsWith('+')
                                      ? Colors.green
                                      : Colors.red,
                                ),
                              ),
                              Text(activity['type']!),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
