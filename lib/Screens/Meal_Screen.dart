import 'package:flutter/material.dart';
import 'package:meal_app/Model/Category.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Screens/Meal_Details_Screen.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';
import 'package:meal_app/Widgets/Meal_Item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key, @required this.title, required this.meals});

  final String? title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 30, 70, 32),
        title:Text(title??'')
      ),
      body:
  /*     ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return MealItem(meal: meals[index]);
      },
    )*/
     SingleChildScrollView(
        child: Column(
          children:
            meals.map((e)=>MealItem(
              selectMeal: (meal){Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return MealDetailsScreen(meal: meal,onTuggleFavorite: (meal) {
                    
                  },);


                })
              );}, 
              meal: e)).toList()
        ),
      ),
    );
  }
}