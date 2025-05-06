import 'package:flutter/material.dart';
import 'user_model.dart';

class MyCascadeOperator extends StatelessWidget {
  const MyCascadeOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cascade Operator
    User user1 = User()
      ..name = 'User1'
      ..age = 13
      ..changeName(); // Esto establece name = 'Peter'

    // No Cascade Operator
    User user2 = User();
    user2.name = 'User2';
    user2.age = 20;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cascade Operator'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              color: Colors.deepPurple[100],
              child: const Text(
                '''User user1 = User()
  ..name = 'User1'
  ..age = 13
  ..changeName();''',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'User 1 -> Name: ${user1.name}', // Mostrará 'Peter'
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              'User 1 -> Age: ${user1.age}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            Text(
              'User 2 -> Name: ${user2.name}',
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              'User 2 -> Age: ${user2.age}',
              style: const TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
