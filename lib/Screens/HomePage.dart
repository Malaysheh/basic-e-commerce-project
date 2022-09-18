import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:appten/Data/navigation.dart';
import 'package:appten/Widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width,
              // Carosel slider
              child: Carosel(),

            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homecategory(text: "Offers", icon: Icons.discount),
                homecategory(text: "Best Selling", icon: Icons.sell),
                homecategory(text: "New", icon: Icons.new_releases),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              "Recommended",
              style:
                  GoogleFonts.abel(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 15,
            ),
          RecommendationsGrid(),
          ],
        ),
      ),
    );
  }
}
