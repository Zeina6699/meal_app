import 'package:flutter/material.dart';
import 'package:meal_app/Screens/Categories_Screen.dart';
import 'package:meal_app/Screens/Meal_Screen.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';
import 'package:meal_app/Widgets/ShowBottomNavigationBar.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
     Widget activePage = CategoriesScreen();
    var activePageTitle = ' Pick your Category :';

    if (_selectedPageIndex == 1) {
      activePage = MealScreen( meals: []);
      activePageTitle = 'Favorites';
    }
    return Scaffold(
      appBar: AppBar(
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
