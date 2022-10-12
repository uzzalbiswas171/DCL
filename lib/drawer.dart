import 'package:flutter/material.dart';

class DraweDemo extends StatelessWidget {
  const DraweDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("img/spig.png"),fit: BoxFit.fill),
            ),
          ),
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text('DCL',style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: Colors.black
              ),),
            ),
          ),
          ListTile(
            title: const Text('Our Services',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Contact',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('About us',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),),
            onTap: () {

              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Teem',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 17,
            ),),
            onTap: () {

              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
