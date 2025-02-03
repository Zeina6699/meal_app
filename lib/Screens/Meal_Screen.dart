import 'package:flutter/material.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Screens/Meal_Details_Screen.dart';
import 'package:meal_app/Widgets/Meal_Item.dart';

class MealScreen extends StatelessWidget {
  MealScreen({super.key, @required this.title, required this.meals,required this.onToggleFavorite});

  final String? title;
  final List<Meal> meals;
  void Function(Meal meal)onToggleFavorite;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      
  /*     ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return MealItem(meal: meals[index]);
      },
    )*/

      appBar:  title != null ? AppBar(
        backgroundColor: const Color.fromARGB(255, 30, 70, 32),
        title: Text(title!),
      ) : null, 


    body: SingleChildScrollView(
        child: Column(
          children:
            meals.map((e)=>MealItem(
              selectMeal: (meal){Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return MealDetailsScreen(meal: meal,onTuggleFavorite:onToggleFavorite
                    
                  );


                })
              );}, 
              meal: e)).toList()
        ),
      ));
 
  }
}