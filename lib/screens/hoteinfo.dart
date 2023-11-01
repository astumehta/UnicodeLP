




import 'package:flutter/material.dart';
class HotelInfo extends StatelessWidget {
  
  final String imagestring;
  final String hotelname;
  final String price;
  
  
  const HotelInfo({super.key,required this.imagestring,required this.hotelname,required this.price});

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(5.0,0,5,0),
    child: SizedBox(
                        width: double.maxFinite,
                        height: 110,
                        
                        child: Card(
                          elevation: 20,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 110,
                                  width: 100,
                                  child: Card(
                                    shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                                    child: Image.asset(imagestring),),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text("  "),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,8,0,0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                        hotelname,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text("lorem e hjkj ygqygwgqu "),
                                      const Text("g4yug4yu gy4tu"),
                                        ],
                                      ),
                                    ),
                                    
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "            $price",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800),
                                            textAlign: TextAlign.end,
                                          ),
                                          const Text(
                                            "             +18%gst",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal),
                                            textAlign: TextAlign.end,
                                          )
                                        ])
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
  );
}

}