import 'package:flutter/material.dart';

class MyAnimatedPadding extends StatefulWidget {
  const MyAnimatedPadding({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPadding> createState() => _MyAnimatedPaddingState();
}

class _MyAnimatedPaddingState extends State<MyAnimatedPadding> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Animated Padding')),
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            child: Image.network(
                'https://raw.githubusercontent.com/David-Salazar-1082/Electronicos_imagenes_app_flutter/refs/heads/main/Electronicos_2.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 50;
                  });
                },
                icon: const Icon(
                  Icons.zoom_out,
                  color: Colors.blue,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 0;
                  });
                },
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              '''Cow, in common parlance, a domestic bovine, regardless of  sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.
                ''',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
