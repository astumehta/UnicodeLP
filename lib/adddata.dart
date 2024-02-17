
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController name=TextEditingController();

  TextEditingController price=TextEditingController();
  addData(String name,String price) async {
    if(name=="" && price==""){
      log("Enter fields" as num);
    }
    else
    {
      FirebaseFirestore.instance.collection("FavoriteHotels").doc(name).set({
        "Name":name,
        "Price":price
      }).then((value) => {
        log("data inserted" as num)
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add data"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Enter hotel name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: price,
              decoration: InputDecoration(hintText: "Enter Price",border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
            ),
          ),
          const SizedBox(height: 300,),
          ElevatedButton(onPressed: (){
            addData(name.text.toString(), price.text.toString());
          }, child: const Text("Save data"))

        ],
      ),
    );
  }
}