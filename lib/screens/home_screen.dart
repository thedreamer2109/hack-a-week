import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ambicare_app/widget/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final applicationBlock = Provider.of<ApplicationBlock>(context);
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),

//(applicationBlock.currentLocation == null)
      //? Center(
      // child: CircularProgressIndicator(),
      //)
      body: ListView(
        children: [
          //TextField(
          //  decoration: InputDecoration(hintText: 'Search Location'),
          //),
          Container(
            height: 300.0,
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(21.7, 89.0),
                zoom: 20.0,
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  iconSize: 100,
                  icon: Icon(Icons.mail),

                  onPressed: () {},
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return const AccidentsEmergency();//accidents emergency
                ),
                IconButton(
                  iconSize: 100,
                  icon: Icon(Icons.mail),

                  // simple map button
                  onPressed: () {},
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return const moderateEmergency();//accidents emergency
                ),
                IconButton(
                  iconSize: 100,
                  icon: Icon(Icons.mail),

                  // simple map button
                  onPressed: () {},
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) {
                  //       return const mildEmergency();//accidents emergency
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
