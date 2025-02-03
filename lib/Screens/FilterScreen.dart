import 'package:flutter/material.dart';
import 'package:meal_app/Screens/Tabs_Screen.dart';
import 'package:meal_app/Widgets/Custom_Drawer.dart';

class Filterscreen extends StatefulWidget {
  const Filterscreen({super.key});

  @override
  State<Filterscreen> createState() => _FilterscreenState();
}

class _FilterscreenState extends State<Filterscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Your Filter'),),
      drawer: CustomDrawer(onSelectScreen:(identifier){Navigator.of(context).pop(); if(identifier=='Meals'){ Navigator.of(context).push(MaterialPageRoute(builder: (context){return TabsScreen();}));}
} ),
      body: const Column(children: [],),
    );
  }
}