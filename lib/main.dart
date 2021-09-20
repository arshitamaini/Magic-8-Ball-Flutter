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
          title: Text('Ask Me Anything'),
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
      ballnumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      TextButton(
          onPressed: () {
            randomball();
            print(ballnumber);
          },
          child: Image.asset('images/ball$ballnumber.png'))
    ]);
  }
}
