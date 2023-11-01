import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/details.dart';
import 'package:lp1unicode/screens/favourites.dart';
import 'hoteinfo.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Hotel extends StatefulWidget {
  const Hotel({super.key});

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GNav(
              gap: 7,
              tabBackgroundColor: Colors.transparent,
              padding: const EdgeInsets.all(20),
              tabs: [
                GButton(
                  icon: Icons.hotel,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                ),
                GButton(
                  icon: Icons.details,
                  iconColor: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Details()),
                    );
                  },
                ),
              ],
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(17, 12, 18, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "HotelNow",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage("images/blank.jpg"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 2),
                    child: SizedBox(
                      height: 50,
                      child: Card(
                        elevation: 20,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            side: BorderSide(
                                width: 3, color: Color.fromARGB(255, 0, 0, 0))),
                        child: Column(children: [
                          const SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  Text(
                                    " Search your stay",
                                    style: GoogleFonts.poppins(),
                                  )
                                ]),
                          )
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 2, 10, 8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Favourites this week",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                              Favourites(
                                  imagestring: "images/taj.jpg",
                                  hotelname: "Taj",
                                  price: ""),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                  const HotelInfo(
                      imagestring: "images/taj.jpg",
                      hotelname: "Hotel Name",
                      price: "12545"),
                ],
              )
            ],
          ),
        ));
  }
}
