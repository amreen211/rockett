

import 'package:flutter/material.dart';
import 'package:rockett/screens/rockets_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug ribbon from top
      theme: ThemeData(
        primarySwatch: Colors.green, // Change primary color theme to green
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rocket App'),
          centerTitle: true, // center title horizontally
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // handle search button click
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // handle settings button click
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("John Doe"),
                accountEmail: Text("johndoe@example.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("JD"),
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Favorites"),
                onTap: () {
                  // Handle favorites tap
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  // Handle settings tap
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("About"),
                onTap: () {
                  // Handle about tap
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RocketsScreen()),
              );
            },
            child: Text('View Rockets'),
          ),
        ),
      ),
    );
  }
}




