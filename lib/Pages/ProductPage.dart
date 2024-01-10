import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 98, 111),
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        title: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: TextFormField(
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\n    DJI',style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w700,color: Colors.black),
          ),
          Text(
            '  DJI INSPIRE 2',
            style: GoogleFonts.montserrat(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),
          ),
          Image.asset('lib/images/drone.png'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' ₹', style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.green)),
              Text('600,000.00', style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black)),
             
            ],
            
          ),
          Row(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('\n   Integrated into the Inspire 2 is the brand new CineCore 2.1 image\n   processing system, which is capable of recording video in 6K\n   @4.44Gbps CinemaDNG*1, 5.2K @2.08Gbps Apple ProRes*2, and\n   H.265/H.264 @100Mbps. CineCore 2.1 supports burst shots,',
              style:GoogleFonts.montserrat(fontSize: 11,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 45, 45, 45))),
              
            ],
          ),
          SizedBox(height: 40,),
          Container(
            width: 392.7,
            height: 2,
            color: Colors.grey,
          ),
        SizedBox(height: 10,),
        SizedBox(width: 50,),
          Center(
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 124, 124, 124),
                borderRadius: BorderRadius.circular(35),
                

              ),
              
            ),
          ),
           SizedBox(height: 10,),
        SizedBox(width: 50,),
          Center(
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 124, 124, 124),
                borderRadius: BorderRadius.circular(35),
                

              ),
              
            ),
          )
        ],
        
      ),
      
      
    );
  }
}
