import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/Custom_List_Tile.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding:const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primaryContainer,
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8)

            ])),
            child: Row(children: [
              Icon(Icons.fastfood,color: Theme.of(context).colorScheme.primary,size: 30),
              const SizedBox(width: 20),
              CustomText(text: 'Cooking up ...',fontSize:25,color:Theme.of(context).colorScheme.primary)
            ],
            )),
            CustomListTile(text:'Meals ',icon: Icons.restaurant,),
            CustomListTile(text: 'Filters',icon: Icons.settings,)

        ],
      ),
    );
  }
}
