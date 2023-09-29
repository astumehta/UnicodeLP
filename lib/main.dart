



import 'dart:async';


import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/login.dart';


void main()
{
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
      theme: ThemeData.dark(),
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
    return const Scaffold(
      body: Center(child: Image(image: AssetImage("images/giphy.gif")))
    );
  }
  
  Future<void> wheretogo() async {
    
    Timer(const Duration(seconds: 4), () 
    { 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}
