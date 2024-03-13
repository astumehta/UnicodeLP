import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lp1unicode/screens/favorites_screen.dart';
import 'package:lp1unicode/screens/hotel.dart';

class Details extends StatefulWidget {
  final String hotelname;
  final String price;
  final String imagestring;
  final String description;
  final String username;

  const Details({
    Key? key,
    required this.hotelname,
    required this.price,
    required this.imagestring,
    required this.description, required this.username,
  }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isStarColored = false;

  @override
  void initState() {
    super.initState();
    checkHotelExists();
  }

  Future<void> checkHotelExists() async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("FavoriteHotels")
          .where("Name", isEqualTo: widget.hotelname)
          .where("Price", isEqualTo: widget.price)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        setState(() {
          isStarColored = true;
        });
      } else {
        setState(() {
          isStarColored = false;
        });
      }
    } catch (e) {
      log("Error checking hotel data: $e" as num);
    }
  }

  Future<void> addData(String name, String price) async {
    if (name.isEmpty || price.isEmpty) {
      log("Enter fields" as num);
      return;
    }

    try {
      await FirebaseFirestore.instance.collection("FavoriteHotels").doc(name).set({
        "Name": name,
        "Price": price
      });
      setState(() {
        isStarColored = true;
      });
      log("Data inserted" as num);
    } catch (e) {
      log("Error inserting data: $e" as num);
    }
  }

  Future<void> deleteData(String name, String price) async {
    if (name.isEmpty || price.isEmpty) {
      log("Name and price cannot be empty" as num);
      return;
    }

    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection("FavoriteHotels")
          .where("Name", isEqualTo: name)
          .where("Price", isEqualTo: price)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        await querySnapshot.docs.first.reference.delete();
        setState(() {
          isStarColored = false;
        });
        log("Document deleted successfully" as num);
      } else {
        log("Document not found" as num);
      }
    } catch (e) {
      log("Error deleting document: $e" as num);
    }
  }

  void triggernotification() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(id: 10, channelKey: 'basic_channel', title: 'Hotel booked !!'));
  }

  void triggernotification1() {
    AwesomeNotifications().createNotification(
        content: NotificationContent(id: 20, channelKey: 'basic_channel', title: 'Hotel added to favorites !!'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: GNav(
            gap: 7,
            hoverColor: Colors.black,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.transparent,
            padding: const EdgeInsets.all(20),
            tabs: [
              GButton(
                icon: Icons.hotel,
                iconColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Hotel(name: widget.username,)),
                  );
                },
              ),
              GButton(
                icon: Icons.details,
                iconColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        hotelname: widget.hotelname,
                        price: widget.price,
                        imagestring: widget.imagestring,
                        description: widget.description,
                        username: widget.username,
                      ),
                    ),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite,
                iconColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritesScreen()),
                  );
                },
              ),
            ],
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 245, 252, 255),
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ClipPath(
                    clipper: const ShapeBorderClipper(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Card(
                          elevation: 4,
                          child: Image.network(
                            widget.imagestring,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 20,
                          top: 30,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isStarColored = !isStarColored;
                              });
                              if (isStarColored) {
                                _DetailsState().triggernotification1();
                                addData(widget.hotelname, widget.price);
                              } else {
                                deleteData(widget.hotelname, widget.price);
                              }
                            },
                            child: Stack(
                              children: [
                                const Icon(
                                  Icons.star_border,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                isStarColored
                                    ? const Icon(
                                        Icons.star,
                                        size: 50,
                                        color: Colors.redAccent,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              widget.hotelname,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 2),
                            child: Text(
                              widget.price,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 0, 0, 0),
                        thickness: 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0, // Adjust the width of the border as needed
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                            children: [
                              Text(widget.description),
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
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Spacer(), // Add Spacer widget to push the card to the right
                          Card(
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(
                                color: Colors.black,
                                width: 1.0, // Adjust the width of the border as needed
                              ),
                            ),
                            child: SizedBox(
                              width: 200,
                              height: 60,
                              child: TextButton(
                                onPressed: () {
                                  _DetailsState().triggernotification();
                                },
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Book Now",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
