import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20), // 20px margin
          padding: const EdgeInsets.all(15), // 15px padding inside container
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Welcome to Home Page",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 10), // Space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Text("Go to Second Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
