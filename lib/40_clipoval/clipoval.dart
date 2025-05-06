import 'package:flutter/material.dart';

class MyClipOval extends StatelessWidget {
  const MyClipOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clip Oval')),
      body: Center(
        child: ClipOval(
          child: Image.network(
            'https://raw.githubusercontent.com/David-Salazar-1082/Electronicos_imagenes_app_flutter/refs/heads/main/Electronicos_1.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
