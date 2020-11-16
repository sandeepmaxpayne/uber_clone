import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            DatabaseReference dbReference =
                FirebaseDatabase.instance.reference().child('test');
            dbReference.set('IsConnected');
          },
          color: Colors.green,
          height: 50,
          minWidth: 300,
          child: Text('Test Connection'),
        ),
      ),
    );
  }
}
