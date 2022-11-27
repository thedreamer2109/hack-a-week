import 'package:flutter/material.dart';
import 'package:ambicare_app/widget/navigation_drawer.dart';

class AccoutScreen extends StatefulWidget {
  const AccoutScreen({super.key});

  @override
  State<AccoutScreen> createState() => _AccoutScreenState();
}

class _AccoutScreenState extends State<AccoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Account',
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
          
          children: [
            Padding(//profile pic
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
children:[
                
              Icon(Icons.portrait_outlined , size: 100,color: Colors.black,),
              Text('Profile',style: TextStyle(fontSize: 20, color: Colors.black)),],),),
              
            
           Padding(//profile pic
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
children:[
                
             
              Text('Username: Sara Jhonson',style: TextStyle(fontSize: 20, color: Colors.black), ),],),),
              
            Padding(//profile pic
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
children:[
                
             
              Text('Age:18',style: TextStyle(fontSize: 20, color: Colors.black), ),],),),
              
            Padding(//profile pic
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center, //Center Column contents vertically,
crossAxisAlignment: CrossAxisAlignment.center, //Center Column contents horizontally,
children:[
                
             
              Text('Phone Number:653478934',style: TextStyle(fontSize: 20, color: Colors.black),),],
              
            
        ),
      ),],),),);
    
  }
}
