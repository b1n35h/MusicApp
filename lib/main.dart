import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'sidebar/sidebar_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'DancingScript',
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.white),
      home: SideBarLayout(),
    );
  }
}
