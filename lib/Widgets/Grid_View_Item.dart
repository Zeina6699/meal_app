import 'package:flutter/material.dart';
import 'package:meal_app/Data/dummy_data.dart';
import 'package:meal_app/Model/Category.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Screens/Meal_Screen.dart';

class GridViewItem extends StatelessWidget {
 GridViewItem({super.key, required this.category,required this.onToggleFavorite});
  final Category category;
    void Function(Meal meal)onToggleFavorite;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: InkWell(
    splashColor: Theme.of(context).primaryColor,
    onTap: (){
    final filteredMeal = dummyMeals.where((meal)=>meal.categories.contains(category.id)).toList();
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context){
        return MealScreen(title: category.title, meals: filteredMeal,onToggleFavorite:onToggleFavorite ,);
      })
    );
    },
    child: Container(
      padding:const EdgeInsets.all(8),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: Alignment.bottomLeft,
          colors: [
        category.color.withOpacity(0.54),
        category.color.withOpacity(0.9)
        ])
      ),
      
      child: Text(category.title,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onSurface
      ),
      ),
    ),
  ),
),

    );
  }
}