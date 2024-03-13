import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lp1unicode/screens/details.dart';

class Favourites extends StatelessWidget {
  final String imagestring;
  final String hotelname;
  final String price;
  final String description;
  final String username;

  const Favourites(
      {super.key,
      required this.imagestring,
      required this.hotelname,
      required this.price,
      required this.description, required this.username,});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 300,
      width: 230,
      
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(
                width: 0.0, )),
        elevation: 5,
        margin:  const EdgeInsets.fromLTRB(10, 0, 4, 0
        ),
        child: Stack(
          children: <Widget>[
            Image.network(imagestring,width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
            Positioned(
              left: 10,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                        hotelname,
                        maxLines: 2,
                        style:GoogleFonts.poppins(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                      ),),
                    
                    const Text(
                      "Description",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Row(
  children: [
    Expanded(
      child: Stack(
        children: [
          Positioned(
            right: 1,
            top: 1,
            child: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    hotelname: hotelname,
                    price: price,
                    imagestring: imagestring,
                    description: description,
                    username: username,
                  ),
                ),
              ),
              icon: const Icon(Icons.star, color: Colors.amber),
            ),
          ),
          Positioned(
            left: 1,
            top: 1,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                  ),
                ),
                child: Text(
                  price,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ],
)


          ],
        ),
      ),
    );
  }
}