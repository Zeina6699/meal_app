import 'package:flutter/material.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Screens/Categories_Screen.dart';
import 'package:meal_app/Screens/FilterScreen.dart';
import 'package:meal_app/Screens/Meal_Screen.dart';
import 'package:meal_app/Widgets/Custom_Drawer.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';
import 'package:meal_app/Widgets/ShowBottomNavigationBar.dart';


class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   int _selectedPageIndex = 0;
   final List<Meal> FavoriteMeal=[];

   void showSnackBar(BuildContext context,String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }
   void setScreen(String identifier){
    if(identifier=='Filters'){Navigator.of(context).pop(); Navigator.of(context).push(MaterialPageRoute(builder: (context){return Filterscreen();}));}
    else{Navigator.of(context).pop();}
   }

   void toggleMealFavoriteStatus(Meal meal){
    final isExsiting=FavoriteMeal.contains(meal);

    if(isExsiting){setState(() {FavoriteMeal.remove(meal); showSnackBar(context, 'Meal is no longer Favorite'); }); }
    else{setState(() {  FavoriteMeal.add(meal);  showSnackBar(context, 'Marked as a Favorirte');   });
   }}

  @override
  Widget build(BuildContext context) {
     Widget activePage =  CategoriesScreen(onToggleFavorite: toggleMealFavoriteStatus,);
    var activePageTitle = ' Pick your Category :';

    if (_selectedPageIndex == 1) {
      activePage =  MealScreen( meals:FavoriteMeal,onToggleFavorite:toggleMealFavoriteStatus);
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      drawer:CustomDrawer(onSelectScreen: setScreen,),
      appBar:AppBar(
       
        backgroundColor: const Color.fromARGB(255, 30, 70, 32),
        title: CustomText(text:activePageTitle,fontSize: 20,),
      ),
    body:activePage,
   bottomNavigationBar:  ShowBottomNavigationBar(
    icon1: Icons.set_meal, label1: "Categories",icon2: Icons.star,label2: 'Favorite',
       onSelectPage: (index) { // تمرير الدالة لتحديث الصفحة
          setState(() {
            _selectedPageIndex = index;
          });}
    )

    )
    
    ;
  }
}
