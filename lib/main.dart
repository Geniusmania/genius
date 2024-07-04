import 'package:flutter/material.dart';
import 'package:snapchat/screens/Chat_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:snapchat/screens/Home_Screen.dart';
import 'package:snapchat/screens/Home_page.dart';
import 'package:snapchat/screens/Login_Screen.dart';

import 'bottom_nav_bar.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

 const  MyApp({super.key});




  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignUp(),
    );
  }
}
