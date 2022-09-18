import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//this is the widget for items in the drawer
Widget buildItemMenu({
  required String text,
  required IconData icon,
}) {
  final color = Colors.black;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color, fontSize: 20),
    ),
    hoverColor: Colors.grey,
  );
}

//search bar delegate
class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.black,
        ),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (() => close(context, null)),
    );
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}

//home page category buttons
Widget homecategory({
  required String text,
  required IconData icon,
}) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(10),
        width: 40,
        height: 40,
        decoration:
            BoxDecoration(color: Colors.blue.shade100, shape: BoxShape.circle),
        child: FittedBox(
          child: Icon(icon, color: Color.fromARGB(255, 0, 72, 197)),
        ),
      ),
      Text(
        text,
        style: TextStyle(color: Color.fromARGB(255, 0, 72, 197)),
      ),
    ],
  );
}

DecorationImage({
  required ImageProvider<Object> image,
  ImageErrorListener? onError,
  ColorFilter? colorFilter,
  BoxFit? fit,
  AlignmentGeometry alignment = Alignment.center,
  Rect? centerSlice,
  ImageRepeat repeat = ImageRepeat.noRepeat,
  bool matchTextDirection = false,
  double scale = 1.0,
}) {}

//home page Recommendations grid
List _recTitels = [
  "Samsung S22 Ultra",
  "Iphone 14 pro",
  "MacBook Air 2022",
  "Apple Watch Series 8"
];
List _recImages = [
  'http://cdn.shopify.com/s/files/1/0011/8249/8934/products/3.s22_ultra_carousel_groupkv_mo_c_220120_1024x.jpg?v=1644762434',
  'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-14-pro-finish-select-202209-6-7inch-deeppurple?wid=5120&hei=2880&fmt=jpeg&qlt=90&.v=1660754254057',
  'https://m.media-amazon.com/images/I/71f5Eu5lJSL._SX522_.jpg',
  'https://www.apple.com/newsroom/images/product/watch/standard/Apple_watch-series7-availability_hero_10052021_big.jpg.slideshow-large_2x.jpg'
];

class RecommendationsGrid extends StatefulWidget {
  RecommendationsGrid({Key? key}) : super(key: key);

  @override
  State<RecommendationsGrid> createState() => _RecommendationsGridState();
}

class _RecommendationsGridState extends State<RecommendationsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 250,
      ),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.network(
                      _recImages[index],
                      height: 170,
                      width: 300,
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  _recTitels[index],
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// home page Carousel slider images paths
List imagesPaths = [
  'images/cr1.jpg',
  'images/cr3.jpg',
  'images/cr5.jpg',
  'images/cr2.jpg',
  'images/cr4.jpg',
];

//carosel slider
class Carosel extends StatefulWidget {
  Carosel({Key? key}) : super(key: key);

  @override
  State<Carosel> createState() => _CaroselState();
}

class _CaroselState extends State<Carosel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2)),
        items: imagesPaths.map((e) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                e,
                width: MediaQuery.of(context).size.width,
                // height: 150,
                fit: BoxFit.contain,
              ),
            ),
          );
        }).toList());
  }
}
 //category list

 class CategorysList extends StatefulWidget {
   CategorysList({Key? key}) : super(key: key);
 
   @override
   State<CategorysList> createState() => _CategorysListState();
 }
 List _categorysTitle=["Phones","Tablets","Laptops","Smart Wearables","Accessories",];
  List <IconData> _categorysIcons = [Icons.phone_android,Icons.tablet,Icons.laptop_mac,Icons.watch,Icons.headphones];
 class _CategorysListState extends State<CategorysList> {
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
            shrinkWrap: true,

       itemCount: _categorysTitle.length,
       itemBuilder: (BuildContext context, int index) {
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Card(
            
             child: ListTile(
              trailing: Icon(_categorysIcons[index]),
              leading: Text(_categorysTitle[index],style: TextStyle(fontSize: 25),),
               ),
           ),
         );
       },
     );
   }
 }