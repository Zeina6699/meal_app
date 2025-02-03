import 'package:flutter/material.dart';
import 'package:meal_app/Screens/Categories_Screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/Screens/Meal_Details_Screen.dart';
import 'package:meal_app/Screens/Meal_Screen.dart';
import 'package:meal_app/Screens/Tabs_Screen.dart';

void main() {
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark
)),
//routes: {
 // '/category':(context)=>CategoriesScreen(),
 // '/meal':(context)=>MealScreen(title: '',meals: [],onToggleFavorite: (){},),
  //'/detail':(context)=>const MealDetailsScreen(meal:meal, onTuggleFavorite:),
 // '/tab':(context)=>const TabsScreen()
//},
    // initialRoute:'/tab'
    home: TabsScreen(),
     );}}
