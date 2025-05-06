import 'package:flutter/material.dart';

class MyPlaceholder extends StatelessWidget {
  const MyPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Placeholder'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Placeholder(
              fallbackHeight: 100,
              strokeWidth: 5,
              color: Colors.teal,
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                  child: Placeholder(
                    fallbackHeight: 200,
                    strokeWidth: 5,
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Placeholder(
              fallbackHeight: 90,
              strokeWidth: 5,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
