import 'package:flutter/material.dart';
import 'package:meal_app/Data/dummy_data.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Widgets/Grid_View_Item.dart';


class CategoriesScreen extends StatelessWidget {
CategoriesScreen({super.key,required this.onToggleFavorite});
      void Function(Meal meal)onToggleFavorite;


  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 5),
        child: GridView.builder(
          itemCount: availableCategories.length,
          itemBuilder: (context,index){
            return GridViewItem(category: availableCategories[index],onToggleFavorite:onToggleFavorite ,);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount:2,
           crossAxisSpacing:2,
           mainAxisSpacing: 1,
           childAspectRatio: 3/2,
           
           )),
      );}}
          