import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lp1unicode/model.dart';
import 'package:lp1unicode/screens/details.dart';
import 'package:lp1unicode/screens/favourites.dart';
import 'package:lp1unicode/screens/hoteinfo.dart';

class Hotel extends StatefulWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  // Define a list to store hotel data from the API
  List<Data> hotels = [];

  // Function to fetch data from the API
  Future<List<Data>> fetchData() async {
    const String apiKey = '4ab8efea36msh245d3ad941ffe9fp1cc4cajsnf810ce5018e2';
    const String apiHost = 'worldwide-hotels.p.rapidapi.com';
    const String apiUrl =
        'https://worldwide-hotels.p.rapidapi.com/search?location_id=45963&language=English&currency=USD&offset=0';

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': apiHost,
      },
      body: {
        "location_id": "45963",
        "language": "English",
        "currency": "USD",
        "offset": "0"
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final hotelData = HotelData.fromJson(data);
      return hotelData.results?.data ?? [];
    } else {
      throw Exception('Failed to load hotels');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: GNav(
            gap: 7,
            tabBackgroundColor: Colors.transparent,
            padding: EdgeInsets.all(20),
            tabs: [],
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
                      child: Column(
                        children: [
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 12, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.black)),
                            fixedSize: const Size(80, 25),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Icon(Icons.airplanemode_active,
                            color: Colors.black),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.black)),
                            fixedSize: const Size(80, 25),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Icon(Icons.house_outlined,
                            color: Colors.black),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.black)),
                            fixedSize: const Size(80, 25),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Icon(Icons.car_crash_outlined,
                            color: Colors.black),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.black)),
                            fixedSize: const Size(80, 25),
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child:
                            const Icon(Icons.location_on, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 2, 10, 8),
                  child: Column(
                    children: [
                      const Row(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.filter_alt),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "See all",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                        child: FutureBuilder<List<Data>>(
                          // Use the hotel.results?.data to get the list of hotels
                          future: fetchData(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                    ConnectionState.done &&
                                snapshot.hasData) {
                              return ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: snapshot.data?.length ?? 0,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Details(
                                            hotelname:
                                                snapshot.data?[index].name ?? "",
                                            price: snapshot.data?[index].price ?? "",
                                            imagestring: snapshot.data?[index]
                                                    .photo?.images?.original?.url ??
                                                "",
                                            description: snapshot.data?[index].description ?? "",
                                          ),
                                        ),
                                      );
                                    },
                                    child: Favourites(
                                      hotelname: snapshot.data?[index].name ?? "",
                                      imagestring: snapshot.data?[index].photo?.images?.original?.url ?? "",
                                      price: snapshot.data?[index].price ?? "",
                                      description: snapshot.data?[index].description ?? "",
                                    ),
                                  );
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              return const CircularProgressIndicator(color: Colors.black);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Sample HotelInfo widgets
                FutureBuilder<List<Data>>(
                  // Use the hotel.results?.data to get the list of hotels
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Column(
                        children: snapshot.data!.map((hotel) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Details(
                                    hotelname: hotel.name ?? "",
                                    price: hotel.price ?? "",
                                    imagestring: hotel.photo?.images?.original?.url ?? "",
                                    description: hotel.description ?? "",
                                  ),
                                ),
                              );
                            },
                            child: HotelInfo(
                              hotelname: hotel.name ?? "",
                              imagestring: hotel.photo?.images?.original?.url ?? "",
                              price: hotel.price ?? "",
                              description: hotel.description ?? "",
                            ),
                          );
                        }).toList(),
                      );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return const CircularProgressIndicator(color: Colors.black,);
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}