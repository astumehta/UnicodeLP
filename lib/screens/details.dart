import 'dart:developer';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lp1unicode/screens/hotel.dart';
import 'package:lp1unicode/screens/favorites_screen.dart';

class Details extends StatefulWidget {
  final String hotelname;
  final String price;
  final String imagestring;
  final String description;

  const Details({
    Key? key,
    required this.hotelname,
    required this.price,
    required this.imagestring,
    required this.description,
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
      log("Error checking hotel data: $e");
    }
  }

  Future<void> addData(String name, String price) async {
    if (name.isEmpty || price.isEmpty) {
      log("Enter fields");
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
      log("Data inserted");
    } catch (e) {
      log("Error inserting data: $e");
    }
  }

  Future<void> deleteData(String name, String price) async {
    if (name.isEmpty || price.isEmpty) {
      log("Name and price cannot be empty");
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
        log("Document deleted successfully");
      } else {
        log("Document not found");
      }
    } catch (e) {
      log("Error deleting document: $e");
    }
  }

  void triggernotification()
  {
      AwesomeNotifications().createNotification(content: NotificationContent(id: 10, channelKey: 'basic_channel',title: 'Hotel booked !!'));
  }

  void triggernotification1()
  {
      AwesomeNotifications().createNotification(content: NotificationContent(id: 20, channelKey: 'basic_channel',title: 'Hotel added to favorites !!'));
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
                    MaterialPageRoute(builder: (context) => const Hotel()),
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
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: double.maxFinite,
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
                      color: Colors.grey,
                      thickness: 2,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 235, 246, 250),
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
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 12, 0, 2),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Activities to look out for",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Text("Lushness"),
                                          
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("images/gpay.png"),
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage("images/mastercard.png"),
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage("images/visa.jpg"),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(onPressed: (){
                                  _DetailsState().triggernotification();
                                }, child: const Text("Book"))
                              ],
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
      ),
    );
  }
}