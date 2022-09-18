import 'package:flutter/material.dart';
import 'package:appten/Widgets.dart';

class CategorysPage extends StatefulWidget {
  CategorysPage({Key? key}) : super(key: key);

  @override
  State<CategorysPage> createState() => _CategorysPageState();
}

class _CategorysPageState extends State<CategorysPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: 15,),
          CategorysList(),
        ],
      )),
    );
  }
}
