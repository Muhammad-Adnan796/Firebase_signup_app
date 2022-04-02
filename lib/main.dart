import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:signupapp/screens/home_page.dart';
import 'package:signupapp/screens/login_page.dart';
import 'package:signupapp/screens/signup_page.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.cyan
      ),
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
      routes: {
        "login" : (context) => LoginPage(),
        "home" : (context) => HomePage(),
      },
    );
  }
}
