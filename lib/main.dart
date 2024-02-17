import 'dart:async';
import 'dart:ui';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lp1unicode/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/hotel.dart';
import 'package:lp1unicode/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(channelKey: 'basic_channel', channelName: 'basic_notification', channelDescription: 'notification channel'),
    ],
    debug: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  void initState() 
  {
AwesomeNotifications().isNotificationAllowed().then((isAllowed){
  if(!isAllowed){
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimatedSplashScreen(
          splash: const Image(
            image: AssetImage("images/hotel.gif"),
          ),
          nextScreen: const LoginScreen()),
    );
  }

  Future<void> wheretogo() async {
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }
}
