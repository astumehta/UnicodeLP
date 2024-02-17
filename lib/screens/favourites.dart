import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/details.dart';

class Favourites extends StatelessWidget {
  final String imagestring;
  final String hotelname;
  final String price;
  final String description;

  const Favourites(
      {super.key,
      required this.imagestring,
      required this.hotelname,
      required this.price,
      required this.description,});

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
                color: Colors.black.withOpacity(0.7),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                        hotelname,
                        maxLines: 2,
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),),
                    
                    const Text(
                      "Description",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 1,
                top: 1,
                child: IconButton(
                  onPressed: () => Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Details(hotelname: hotelname,price: price,imagestring:imagestring,description: description,))),icon: const Icon(Icons.star,color: Colors.amber,),
                ))
          ],
        ),
      ),
    );
  }
}