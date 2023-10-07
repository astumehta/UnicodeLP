import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/login.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 245, 252, 255),
        Color.fromRGBO(183, 233, 247, 1),
        Color.fromRGBO(146, 223, 243, 1)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: TextButton(
        onPressed: () {
          FirebaseAuth.instance.signOut().then((value) {
            print("Signed Out");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          });
        },
        child: const Center(
            child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Text(
            " Logout",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        )),
      ),
    ));
  }
}
