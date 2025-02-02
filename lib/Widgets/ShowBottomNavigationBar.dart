
import 'package:flutter/material.dart';
import 'package:meal_app/Screens/Categories_Screen.dart';
import 'package:meal_app/Screens/Meal_Screen.dart';

class ShowBottomNavigationBar extends StatelessWidget {
  ShowBottomNavigationBar({

    super.key, required this.icon1, required this.label1,
    this.icon2,this.icon3,this.icon4,this.label2,this.label3,this.label4,required this.onSelectPage,

  });
  final IconData icon1;
  final String label1;
  final IconData? icon2;
  final String? label2;
  final IconData? icon3;
  final String? label3;
  final IconData? icon4;
  final String? label4;
  final Function(int) onSelectPage;
 
  

  @override
  Widget build(BuildContext context) {   
    
    return BottomNavigationBar(
      currentIndex:0 ,
      onTap:onSelectPage,
      
      items: [
      BottomNavigationBarItem(icon:Icon(icon1) ,label:label1),
      if (icon2 != null && label2 != null) BottomNavigationBarItem(icon: Icon(icon2), label: label2,),
      if (icon3 != null && label3 != null) BottomNavigationBarItem(icon: Icon(icon3), label: label3,),
      if (icon4 != null && label4 != null) BottomNavigationBarItem(icon: Icon(icon4), label: label4,),
      ],
    );
  }
}
  
  
