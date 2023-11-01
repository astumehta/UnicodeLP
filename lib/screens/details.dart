import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lp1unicode/screens/hotel.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          color: Colors.transparent,
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
                      MaterialPageRoute(builder: (context) => const Hotel()),
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
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: Card(
                    child: Image.asset("images/taj.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Taj Santacruz",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 2),
                            child: Text(
                              "12078 +gst",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Container(
                        color: const Color.fromARGB(255, 235, 246, 250),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(children: [
                            const Text(
                                "Taj Santacruz, a luxury hotel in Mumbai, exudes elegance and opulence. With its stunning architectural design and impeccable service, it offers a lavish retreat for travelers. From exquisite dining to plush accommodations, it embodies the perfect blend of modern luxury and traditional Indian hospitality in the heart of the city."),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Get Directions    "),
                                        CircleAvatar(
                                          backgroundColor: Colors.black,
                                          child: Icon(Icons.location_on),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 110,
                                  width: 150,
                                  child: Image.asset(
                                    "images/map.jpg",
                                    height: 110,
                                    width: 100,
                                  ),
                                )
                              ],
                            ),
                          ]),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 12, 0, 2),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Activities to look out for",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            )),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 2,
                      ),
                      Container(
                        width: double.maxFinite,
                        color: const Color.fromARGB(255, 235, 246, 250),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("->Fitness centre"),
                                  Text(
                                    "->Beachfront",
                                    textAlign: TextAlign.left,
                                  ),
                                  Text("->Spa facilities"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Lushness")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Free WIFI")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Parking")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Swimming")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Breakfast")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Spa")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Lushness")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Lushness")
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.nature_people_sharp,
                                                color: Colors.greenAccent,
                                              ),
                                              Text("Lushness")
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ]
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(backgroundImage: AssetImage("images/gpay.png"),),
                          CircleAvatar(backgroundImage: AssetImage("images/mastercard.png"),),
                          CircleAvatar(backgroundImage: AssetImage("images/visa.jpg"),),
                          SizedBox(
                            height: 50,
                            width: 200,
                            
                            child: Card(
                              
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Check Rooms",textAlign: TextAlign.center,),
                                ],
                              ),),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
