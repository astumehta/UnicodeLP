



import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:lp1unicode/firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:lp1unicode/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp
    (
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const SplashScreen());
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  
  
  @override
  void initState() {
      super.initState();
      wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(splash: const Image(image: AssetImage("images/hotel.gif"),width: 1000,), nextScreen: const LoginScreen()),
            
      );
    
  }
  
  Future<void> wheretogo() async {
    
    Timer(const Duration(seconds: 4), () 
    { 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}
