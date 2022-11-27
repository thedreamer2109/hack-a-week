import 'package:flutter/material.dart';
import 'package:ambicare_app/widget/navigation_drawer.dart';

class HelplineScreen extends StatefulWidget {
  const HelplineScreen({super.key});

  @override
  State<HelplineScreen> createState() => _HelplineScreenState();
}

class _HelplineScreenState extends State<HelplineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Helpline',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: TextButton(
                //police
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.local_police_outlined,
                        size: 40, color: Colors.black),
                    Text(
                      'Police',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: TextButton(
                //emergency number
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.emergency_outlined,
                        size: 40, color: Colors.black),
                    Text('Emergency',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: TextButton(
                //women helpline
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.woman_outlined, size: 40, color: Colors.black),
                    Text('Women',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: TextButton(
                //pregnency
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.pregnant_woman_outlined,
                        size: 40, color: Colors.black),
                    Text(
                      'Pregnancy',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: TextButton(
                //elederly
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.elderly_outlined, size: 40, color: Colors.black),
                    Text(
                      'Elderly',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
