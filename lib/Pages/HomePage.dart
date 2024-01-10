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

  String _getContainerImage(int index) {
    List<String> containerImages = [
      'lib/images/drone.png',
      'lib/images/go.png',
      'lib/images/body.png',
      'lib/images/Ronin.png',
    ];

    return containerImages[index % containerImages.length];
  }

  List<String> containerLabels = [
    'DJI Aspire ii\n ₹600000',
    'GoPro hero 10\n   ₹40000',
    'Sony alpha iii\n   ₹500000',
    'DJI Ronin s\n   ₹550000'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 207, 207),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'lib/images/Logo.png',
                    width: 100,
                    height: 130,
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
                height: 0,
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '   SHOP BY BRANDS',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
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
              // Exclusive deals start
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
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                width: 392.7,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 6, 43),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => Container(
                      width: 90,
                      height: 110,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            _getContainerImage(index),
                            width: 90,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            containerLabels[index],
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 392.7,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Image.asset(
                      'lib/images/DJIOsmoPocket3.jpg',
                      width: 300,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              Container(
                height: 140,
                width: 392.7,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 6, 43),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    4,
                    (index) => Container(
                      width: 90,
                      height: 110,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            _getContainerImage(index),
                            width: 90,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 5),
                          Text(
                            containerLabels[index],
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 2,
          child: Container(
            height: 10, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
