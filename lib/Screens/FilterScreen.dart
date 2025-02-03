import 'package:flutter/material.dart';
import 'package:meal_app/Screens/Tabs_Screen.dart';
import 'package:meal_app/Widgets/Custom_Drawer.dart';
import 'package:meal_app/Widgets/Custom_Switch_List_Tile.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  bool glutenFree=false;
  bool lactose=false;
  bool vegan=false;
  bool vegetarian=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Your Filter'),),
      drawer: CustomDrawer(onSelectScreen:(identifier){Navigator.of(context).pop(); if(identifier=='Meals'){ Navigator.of(context).push(MaterialPageRoute(builder: (context){return TabsScreen();}));}
} ),
      body: Column(children: [
       CustomSwitchListTile(x: glutenFree, subTitle: 'only include gluten-free meals', title:'Gluten-Free')
      , CustomSwitchListTile(x: lactose, subTitle: 'only include lactose-free meals', title: 'Lactose-Free')
     , CustomSwitchListTile(x: vegan, subTitle: 'only include Vegan-free meals', title: 'Vegan-Free')
     , CustomSwitchListTile(x: vegetarian, subTitle: 'only include Vegetarian-free meals', title: 'Vegetarian-Free')
      ],),
    );
  }
}