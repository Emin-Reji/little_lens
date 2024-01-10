import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // List of image paths
  List<String> imagePaths = [
    'lib/images/sony.png',
    'lib/images/lens.png',
    'lib/images/drone.png',
    'lib/images/Accesories.png',
  ];

  List<String> images = [
    'lib/images/Canonn.png',
    'lib/images/djii.png',
    'lib/images/goproo.png',
    'lib/images/lumixlogo.png',
    'lib/images/sonyy.png',
    'lib/images/Fujifilm.png',
  ];

  // List of labels
  List<String> labels = ['Cameras', 'Lens', 'Drone', 'Accessories'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Image.asset(
                'lib/images/Logo.png',
                width: 100,
                height: 150,
              ),
              Text(
                'LITTLE\nLENS',
                style: GoogleFonts.montserrat(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 200,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 14, 116, 124),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: GoogleFonts.montserrat(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              for (int i = 0; i < 4; i++)
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.asset(
                          imagePaths[i],
                          width: 50, // Adjust the width
                          height: 50, // Adjust the height
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: Text(
                        labels[i],
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 392.7,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 198, 39, 27),
                ),
                child: Text(
                  '   SHOP BY BRANDS',
                  style: GoogleFonts.montserrat(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              Container(
                height: 65,
                width: 392.7,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 38, 28, 24),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    for (int i = 0; i < 6; i++)
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(right: 10, top: 5),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: Image.asset(
                                images[i],
                                width: 40, // Adjust the width
                                height: 40, // Adjust the height
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          //Exclusive deals start
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Text(
                  '  Exclusive deals for you!!!',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
