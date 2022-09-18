import 'package:appten/Screens/cart.dart';
import 'package:appten/Screens/settingsPage.dart';
import 'package:appten/Widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'HomePage.dart';
import 'categorys.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

 class _HomeScreenState extends State<HomeScreen> {
 static int _selectedIndex =0;
  final user = FirebaseAuth.instance.currentUser!;
 void onTabChange (int Index){
  setState(() {
    _selectedIndex=Index;
  });
 }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        //bottom nav bar
        bottomNavigationBar: Container(
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              
                activeColor: Colors.blue.shade700,
                backgroundColor: Colors.grey.shade200,
                color: Colors.black,
                tabBackgroundColor: Colors.blue.shade100,
                padding: EdgeInsets.all(15),
                gap: 8,
                duration: Duration(milliseconds: 300),
                onTabChange: onTabChange,
                hoverColor: Colors.blue.shade200,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: "Home",
                  ),
                  GButton(
                    icon: Icons.category,
                    text: "Categorys",
                  ),
                  GButton(
                    icon: Icons.shopping_cart,
                    text: "Cart",
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: "Settings",
                  ),
                ]),
          ),
        ),
        //AppBar
        appBar: AppBar(
          elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: MySearchDelegate());
                  },
                  icon: const Icon(Icons.search))
            ],
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title:Text(
            AppBarTitles[_selectedIndex]
            
            ,
              style: 
              GoogleFonts.abel(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)
            ),
        ),

       body: IndexedStack(children: [

        HomePage(),
        CategorysPage(),
        CartPage(),
        SettingsPage(),
       ],
       index: _selectedIndex,
       ) ,
      
      ),
    );
  }
}

List <String>AppBarTitles =["Home","Categorys","Cart","Settings"];
