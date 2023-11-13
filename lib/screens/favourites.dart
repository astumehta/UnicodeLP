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
                width: 0.5, color: Color.fromARGB(255, 0, 0, 0))),
        elevation: 5,
        margin: const EdgeInsets.fromLTRB(10, 0, 4, 0
        ),
        child: Stack(
          children: <Widget>[
            Image.network(imagestring,width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
            Positioned(
              left: 10,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black.withOpacity(0.7),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
<<<<<<< HEAD
                    SizedBox(
                      width: 170,
                      child: Text(
                        hotelname,
                        maxLines: 2,
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
=======
                    Text(
                      hotelname,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
>>>>>>> bb87cc690a94ee2cc3e9466cd78f0a4561ff1d51
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  
                ))
          ],
        ),
      ),
    );
  }
}