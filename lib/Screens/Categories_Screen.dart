import 'package:flutter/material.dart';
import 'package:meal_app/Data/dummy_data.dart';
import 'package:meal_app/Widgets/Grid_View_Item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: availableCategories.length,
        itemBuilder: (context,index){
          return GridViewItem(category: availableCategories[index]);
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount:2,
         crossAxisSpacing:2,
         mainAxisSpacing: 1,
         childAspectRatio: 3/2,
         
         )));}}
          