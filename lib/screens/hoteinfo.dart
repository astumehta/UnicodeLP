import 'package:flutter/material.dart';

class HotelInfo extends StatelessWidget {
  final String imagestring;
  final String hotelname;
  final String price;

  const HotelInfo(
      {super.key,
      required this.imagestring,
      required this.hotelname,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3.5, 0.0, 3.5, 0),
      child: SizedBox(
        width: double.maxFinite,
        height: 110,
        child: Card(
          elevation: 20,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(width: 1, color: Color.fromARGB(255, 0, 0, 0))),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 130,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                            width: 0, color: Color.fromARGB(255, 0, 0, 0))),
                    elevation: 5,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          imagestring,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        const Positioned(
                            right: 10,
                            bottom: 10,
                            child: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotelname,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text("Description")
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(58, 12, 0, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                price,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w800),
                                textAlign: TextAlign.end,
                              ),
                              const Text(
                                "+18%gst",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.end,
                              )
                            ]),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
