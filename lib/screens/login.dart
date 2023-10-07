
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/hotel.dart';
import 'package:lp1unicode/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passsecure=true;
  
  String email="xyz@gmail.com";
  String password="abc";
  
  final TextEditingController y=TextEditingController();
  final TextEditingController z=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      
      body: 
      Container(
        decoration: const BoxDecoration(gradient: LinearGradient(colors: [Color.fromARGB(255,245, 252, 255),Color.fromRGBO(183, 233, 247, 1),Color.fromRGBO(146, 223, 243, 1)],begin: Alignment.topCenter,end: Alignment.bottomCenter)),
        
          child: Padding(
            padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    const SizedBox(height: 20,),
                     const Image(image: AssetImage("images/kisspng-hotel-manager-child-apps-hotel-illustration-hotels-5a7a4b87c57cd2.0897105415179641678089.png"),width: 900,height: 350,),
                     const SizedBox(height:30,),
                      
                        const SizedBox(height: 15,),
                        
              
                        TextField(
                          controller: y,
                          keyboardType: TextInputType.emailAddress,
                          
                          style: const TextStyle(
                                   color: Color.fromRGBO(0,0,0,1),
                                                ),
                          decoration: 
                                   InputDecoration   (
                                
                                   hintText: "Enter Email",
                                   suffixText: "Ex:abc@gmail.com",
                                   hintStyle: const TextStyle(
                                                        color: Color.fromRGBO(0,0,0,1),
                                                       ),
                                   // ignore: prefer_const_constructors
                                   prefixIcon: Icon(Icons.mail),
                                   prefixIconColor: const Color.fromRGBO(24, 49, 24, 1),
                                   floatingLabelBehavior: FloatingLabelBehavior.never,                   
                                   filled: true,
                                   fillColor: const Color.fromRGBO(255,255,255,1).withOpacity(0.2),
                                   
                                   focusedBorder: const OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                    borderRadius: BorderRadius.all(Radius.circular(0))  
                                                                 
                                                                 
                                                                 ),
                                   enabledBorder: const OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                    borderRadius: BorderRadius.all(Radius.circular(0))  
                                                                 
                                                                 
                                                                 ),
                                               ),
                          
              ),
              const SizedBox(height: 20,),
              
              TextField(
                obscureText: passsecure,
                          controller: z,
                        
                          style: const TextStyle(
                                   color: Color.fromRGBO(0,0,0,1),
                                                ),
                          decoration: 
                              InputDecoration   (
                                
                                   hintText: "Enter Your Password",
                                   hintStyle: const TextStyle(
                                                        color: Color.fromRGBO(0,0,0,1),
                                                       ),
                                   
                                   prefixIcon: const Icon(Icons.lock),
                                   
                                   suffixIconColor: Colors.black,
                                   suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                         passsecure=!passsecure;
                                      });
                                     
                                    },
                                    child: Icon(passsecure?
                                    Icons.visibility_off:Icons.visibility
                                    ),
                                   ),
                                   prefixIconColor: const Color.fromARGB(255, 0, 0, 0),                   
                                   filled: true,
                                   fillColor: const Color.fromRGBO(255,255,255,1).withOpacity(0.2),
                                   floatingLabelBehavior: FloatingLabelBehavior.never,     
                                   
                                   focusedBorder: const OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                    borderRadius: BorderRadius.all(Radius.circular(0))  
                                                                 
                                                                 
                                                                 ),
                                    enabledBorder: const OutlineInputBorder(
                                                    
                                                    borderSide: BorderSide(
                                                      color: Color.fromARGB(255, 0, 0, 0),
                                                      width: 2.0,
                                                      style: BorderStyle.solid 
                                                                          ),
                                                    
                                                    borderRadius: BorderRadius.all(Radius.circular(0))  
                                                                 
                                                                 
                                                                 ),
                                   
                                               ),
                          
              ),
              const SizedBox(height: 30,),
              
              ElevatedButton(onPressed: ()  async {
                FirebaseAuth.instance.signInWithEmailAndPassword(email: y.text, password: z.text).then((value) {Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Hotel()),
                );});
              if( y.text=="" || z.text=="")
              {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              }
              
              
              },
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(10),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))))
              ), child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Login"),
              )
              ),
                  
                  
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      
                      const Text("Not a Member? ",style: TextStyle(color: Colors.black,fontSize: 15),),
                      TextButton(onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpScreen()),
                    );
                      }, child: const Center(
                        child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Text(" Sign Up",style: TextStyle(color: Colors.black,fontSize: 12),),
                      )
                      )
                      ,
                      )
                    ],
                  ),
                
              
                  
              ],  
                  
              ),
            ),
          ),
        ),
      
      

    );
  }
}