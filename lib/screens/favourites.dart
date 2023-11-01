// import 'package:flutter/material.dart';

// class Favourites extends StatelessWidget {
//   final String imagestring;
//   final String hotelname;
//   final String price;

//   const Favourites(
//       {super.key,
//       required this.imagestring,
//       required this.hotelname,
//       required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
//       child: SizedBox(
//         height: 180,
//         child: Card(
//           margin: const EdgeInsets.all(10),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         elevation: 5,
//         child: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(imagestring),
//               fit: BoxFit.cover,
//               alignment: Alignment.centerLeft,
//             ),
//           ),
//           child: ListTile(
//             title: Text(hotelname,style: const TextStyle(fontSize: 20,color: Color.fromARGB(255, 176, 2, 2)),),
//             subtitle: Text(price),
//           ),
//         ),
//           ),
//       ),
//     );
//   }
// }

//2
// import 'package:flutter/material.dart';

// class Favourites extends StatelessWidget {
//   final String imagestring;
//   final String hotelname;
//   final String price;

//   const Favourites(
//       {super.key,
//       required this.imagestring,
//       required this.hotelname,
//       required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100,
//       child: Card(
//         margin: const EdgeInsets.all(10),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         elevation: 5,
//         child: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("imagestring"),
//               fit: BoxFit.cover,
//               alignment: Alignment.centerLeft,
//             ),
//           ),
//           child: ListTile(
//             title: Text(hotelname,style: const TextStyle(fontSize: 20,color: Colors.white),),
//             subtitle: Text(price),
//           ),
//         ),
      
//       )
//     );
//   }
// }

// //3
import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  final String imagestring;
  final String hotelname;
  final String price;

  const Favourites(
      {super.key,
      required this.imagestring,
      required this.hotelname,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
      child: SizedBox(
        height: 180,
        child: Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Card(
                    shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
                    child: Image.asset(imagestring)),
                  ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: Text(hotelname,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: SizedBox(
                        
                        child: Text("vhjrbgfhrscfddg"),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



//4
//import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//         body: HorizontalCardList(),
      
//     );
//   }
// }

// class HorizontalCardList extends StatelessWidget {
//   const HorizontalCardList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: List.generate(
//         5, // Number of cards in the list
//         (index) => HorizontalCard(
//           imageUrl: "images/sky${index + 1}.jpg", // Replace with your image paths
//           title: "Card $index",
//         ),
//       ),
//     );
//   }
// }

// class HorizontalCard extends StatelessWidget {
//   final String imageUrl;
//   final String title;

//   const HorizontalCard({super.key, required this.imageUrl, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200, // Set the width of each card as per your design
//       margin: const EdgeInsets.all(10),
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Stack(
//           children: [
//             // Background image
//             Image.asset(
//               imageUrl,
//               width: double.infinity,
//               height: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             // Text overlaid on the image
//             Positioned(
//               bottom: 10,
//               left: 10,
//               right: 10,
//               child: Container(
//                 color: Colors.black.withOpacity(0.7), // Overlay color
//                 padding: const EdgeInsets.all(8),
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
