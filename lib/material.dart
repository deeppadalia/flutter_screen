import 'package:flutter/material.dart';

List matList=[
  "Dart",
  "Widget",
  "CRUD",
  "API",
  "Databse",
  "Project",
];
List priceList=[
  "1500",
  "2000",
  "1000",
  "3000",
  "1500",
  "1400",
];
List timeList=[
  "60 Minutes",
  "80 Minutes",
  "120 Minutes",
  "90 Minutes",
  "180 Minutes",
  "150 Minutes",
];
List ratList=[
  "4.5",
  "3.5",
  "4.0",
  "4.9",
  "4.4",
  "5.0",
];
class MaterialList extends StatelessWidget {
  const MaterialList({super.key});

  get matListList => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        title: const Text(
          "Expert Video Lecture",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
        ),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 47,
                    foregroundImage: AssetImage("assets/Flutter.png"),
                  ),
                  Row(
                    children: [
                      Text(
                        matList[index],
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: Colors.green,
                        size: 18,
                      ),
                      Text(
                        timeList[index],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.red,
                        size: 18,
                      ),
                      Text(
                        ratList[index],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        priceList[index],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,

                        ),
                      ),
                      Icon(
                        Icons.currency_rupee_sharp,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



