import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_lab3/user_auth/pages/home_page.dart';
import 'package:flutter_lab3/user_auth/pages/login_page.dart';
import 'package:flutter_lab3/user_auth/pages/signup_page.dart'; // Import Firebase Auth


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAmXS7vLVy0xCUPt3WMuFv0r-5UZYBbiSw",
            appId: "1:592754210887:web:7cd7430bb4cf17d2875962",
            messagingSenderId: "592754210887",
            projectId: "flutter-lab3-8a270"));
  }else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}