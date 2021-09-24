import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: MagicBallPage()),
    );

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MagucBall(),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text('Ask Me Anything')),
        ));
  }
}

class MagucBall extends StatefulWidget {
  const MagucBall({Key? key}) : super(key: key);

  @override
  _MagucBallState createState() => _MagucBallState();
}

class _MagucBallState extends State<MagucBall> {
  int ballnumber = 1;
  void randomball() {
    setState(() {
      ballnumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          child: Image.asset('images/ball$ballnumber.png'),
          onPressed: () {
            setState(() {
              randomball();
            });
          },
        ),
      ),
    ));
  }
}
