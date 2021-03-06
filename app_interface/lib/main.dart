import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hobby Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

//Main Home Page for hobby hub
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hobby Hub'),
      ),
      //Menu for the diffrent Menu options
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //Hobby List Page
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Hobby List'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Hobby List'),
                    ),
                    body: const Center(
                      child: Text('Demo Home Page for Hobby Hub Hobby List',
                          style: TextStyle(fontSize: 30)),
                    ),
                  );
                }));
              },
            ),
            //Timer Page
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Timer'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Hobby List'),
                    ),
                    body: const Center(
                      child: Text('Demo Home Page for Hobby Hub Hobby Timer',
                          style: TextStyle(fontSize: 30)),
                    ),
                  );
                }));
              },
            ),
            //Fourms Page
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Fourms'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Hobby List'),
                    ),
                    body: const Center(
                      child: Text('Demo Home Page for Hobby Hub Hobby Fourms',
                          style: TextStyle(fontSize: 30)),
                    ),
                  );
                }));
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Demo Home Page for Hobby Hub',
            style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
