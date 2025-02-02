import 'package:flutter/material.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal, required this.onTuggleFavorite});
  final Meal meal;
  final void Function(Meal meal) onTuggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.title),actions: [IconButton(onPressed: ()=>onTuggleFavorite(meal), icon:const Icon(Icons.star))],),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(meal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.fill,
            ),
              const  SizedBox(height:30),
            CustomText(text: 'Ingredient',color:Colors.red,fontSize: 24),
            const  SizedBox(height:10),
            for(final i in meal.ingredients)
            CustomText(text: i,color: Colors.white,),
            const  SizedBox(height: 100,),
             CustomText(text: 'Steps',color: Colors.red,fontSize: 24,),
             const  SizedBox(height:10),
            for(final i in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(vertical:5),
              child: CustomText(text: i,color: Colors.white,textAlign: TextAlign.center,),
            )
            
          //  meal.ingredients.map((e)).toList();
          ],
        ),
      ),
    );
  }
}