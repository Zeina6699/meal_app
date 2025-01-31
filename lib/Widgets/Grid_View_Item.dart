import 'package:flutter/material.dart';
import 'package:meal_app/Model/Category.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: InkWell(
    splashColor: Theme.of(context).primaryColor,
    onTap: (){
    Navigator.pushNamed(context, '/meal');
    },
    child: Container(
      padding:const EdgeInsets.all(8),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: Alignment.bottomLeft,
          colors: [
        category.color.withOpacity(0.54),
        category.color.withOpacity(0.9)
        ])
      ),
      
      child: Text(category.title,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onSurface
      ),
      ),
    ),
  ),
),

    );
  }
}