import 'package:flutter/material.dart';
import 'package:ambicare_app/screens/account_screen.dart';
import 'package:ambicare_app/screens/helpline_screen.dart';
import 'package:ambicare_app/screens/home_screen.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 10);
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.20,
      child: Container(
        color: Colors.white, //change to white
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
              child: Text(
                'AMBICARE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            buildMenuItem(
              text: 'Home',
              icon: Icons.home_outlined,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Helpline',
              icon: Icons.local_phone_outlined, //or local_phone_rounded
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.account_circle_outlined,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 48),
            //buildMenuItem(
            //  text: 'Registeration',
            //  icon: Icons.account_circle_outlined,
            //  onClicked: () => selectedItem(context, 3),
            //),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HelplineScreen(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => AccoutScreen(),
          ),
        );
        break;

      //case 3:
      //  Navigator.of(context).push(
      //    MaterialPageRoute(
      //      builder: (context) => AccountScreen(),
      //    ),
      //  );
      //  break;
    }
  }
}
