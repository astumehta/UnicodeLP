import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lp1unicode/screens/details.dart';
import 'package:lp1unicode/screens/favourites.dart';
import 'package:lp1unicode/screens/login.dart';
import 'hoteinfo.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GNav(
              gap: 7,
              hoverColor: Colors.white,
              activeColor: Colors.white,
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
                  iconColor: Colors.white,
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
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 245, 252, 255),
            Color.fromRGBO(183, 233, 247, 1),
            Color.fromRGBO(146, 223, 243, 1)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: const SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
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
                            backgroundImage: AssetImage("images/blank.jpg"),
                            backgroundColor: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 5, 10, 2),
                      child: SizedBox(
                        height: 50,
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(children: [
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search,
                                    size: 30,
                                  ),
                                  Text(
                                    " Search your stay",
                                    style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.w400),
                                  )
                                ])
                          ]),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 5, 10, 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 180,
                            height: 50,
                            child: Card(
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        size: 20,
                                      ),
                                      Text(
                                        "Check in",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ])
                              ]),
                            ),
                          ),
                          SizedBox(
                            width: 180,
                            height: 50,
                            child: Card(
                              elevation: 20,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(children: [
                                SizedBox(
                                  height: 9,
                                ),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        size: 20,
                                      ),
                                      Text(
                                        "Check out",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ])
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 5, 10, 2),
                      child: SizedBox(
                        height: 60,
                        child: Card(
                          elevation: 40,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                            child: Column(children: [
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Check Availability",
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ])
                            ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 2, 10, 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(0.0),
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
                    //               Card(
                    //   margin: const EdgeInsets.all(10),
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    //   clipBehavior: Clip.antiAliasWithSaveLayer,
                    //   elevation: 5,
                    //   child: Container(
                    //     decoration: const BoxDecoration(
                    //       image: DecorationImage(
                    //         image: AssetImage("images/taj.jpg"),
                    //         fit: BoxFit.cover,
                    //         alignment: Alignment.centerLeft,
                    //       ),
                    //     ),
                    //     child: const ListTile(
                    //       title: Text('Demo Title',style: TextStyle(fontSize: 20,color: Colors.white),),
                    //       subtitle: Text('This is a simple card in Flutter.'),
                    //     ),
                    //   ),
                    // ),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "ITC Maratha   ",
                        price: " 12545"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Taj Lands End ",
                        price: "12015"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "JW Marriot    ",
                        price: "  16078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Sahara star   ",
                        price: "12078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Ibis          ",
                        price: "12078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Trident       ",
                        price: "12078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Oyo Rooms     ",
                        price: "12078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Novotel Juhu  ",
                        price: "12078"),
                    HotelInfo(
                        imagestring: "images/taj.jpg",
                        hotelname: "Taj Mahal     ",
                        price: "12078"),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
