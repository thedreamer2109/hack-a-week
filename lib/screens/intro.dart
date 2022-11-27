import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/homescreen'); //connects to homescreen
              },
              child: Text('start'),
            ),
          ],
        ),
      ),
    );
  }
}
