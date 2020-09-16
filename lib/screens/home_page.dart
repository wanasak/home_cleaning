import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final services = [
    "Sofa Cleaning Services",
    "Carpet Cleaning Services",
    "Deep Cleaning Services",
    "Office Cleaning Services",
    "Window Cleaning Services",
    "Post Construction Cleaning Services",
    "Wall Painting Services",
    "Move In/Out Cleaning Services"
  ];

  final images = [
    "assets/images/broom.png",
    "assets/images/adornment.png",
    "assets/images/vacuum.png",
    "assets/images/offices.png",
    "assets/images/window.png",
    "assets/images/house.png",
    "assets/images/paint-roller.png",
    "assets/images/cleaner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: services.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                MediaQuery.of(context).size.height /
                0.5),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                SizedBox(height: 20.0),
                Image.asset(
                  images[index],
                  height: 50.0,
                  width: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text(
                    services[index],
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat"),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          );
        });
  }
}
