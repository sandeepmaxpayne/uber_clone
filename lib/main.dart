import 'dart:io';
import 'package:cab_rider/screen/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
            appId: '1:297855924061:ios:c6de2b69b03a5be8',
            apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
            projectId: 'flutter-firebase-plugins',
            messagingSenderId: '297855924061',
            databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
          )
        : FirebaseOptions(
            appId: '1:822818727372:android:ff17d968930dad13f12969',
            apiKey: 'AIzaSyB37XXBOAtJ6rkL6JpvHWp5NP2H_9gRNZo',
            messagingSenderId: '297855924061',
            projectId: 'flutter-firebase-plugins',
            databaseURL: 'https://uber-taxi-clone.firebaseio.com',
          ),
  );
  runApp(MaterialApp(
    title: 'Flutter Database Example',
    home: MainPage(),
  ));
}
