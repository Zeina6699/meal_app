import 'package:flutter/material.dart';
import 'package:meal_app/Model/Meal.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

final Meal meal;

String? get complexityText{
  switch(meal.complexity){
    case Complexity.simple: return 'Simple'; break;
    case Complexity.hard: return 'Hard'; break;
    case Complexity.challenging: return 'Challenging'; break;

    }}


    
String? get affordabilityText{
  switch(meal.affordability){
    case Affordability.affordable: return 'Affordable'; break;
    case Affordability.luxurious: return 'Luxurious'; break;
    case Affordability.pricey: return 'Pricey'; break;
  }
}

  @override
  Widget build(BuildContext context) {
    
        return  Card(
          margin:const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        //  clipBehavior: Clip.hardEdge,
          elevation: 2,
        child: InkWell(onTap: (){},
          child: Expanded(
            child: Column(
              children: [
               Stack(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                    child: FadeInImage(
                      placeholder:const AssetImage('assets/images/k.png',),
                       image: NetworkImage(meal.imageUrl)),
                  )),
                     Positioned(
                      bottom: 0,
                      left: 20,
                      right: 0,
                       child: Container(
                        width: 220,
                        padding: EdgeInsets.symmetric(vertical: 6),
                        color: Colors.black54,
                         child: Column(
                           children: [
                            CustomText(
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              text: meal.title,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,textAlign:TextAlign.center,maxLines: 2,),
                             SizedBox(height: 12,),
                             Row()
                           ],
                         ),
                       ),
                     ),
                            /*   FadeInImage(
                    placeholder:MemoryImage(kTransparentImage),
                     image: NetworkImage(meal.imageUrl)),*/
               ] )
              //  Image.network(meal.imageUrl),),
            ,           Container(
              height: 50,
              decoration:const BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                  )
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row( children: [const Icon(Icons.schedule,color: Colors.black,),SizedBox(width: 6), CustomText(text: '${meal.duration} min',color: Colors.black,)],),
                  Row(children: [const Icon(Icons.work,color: Colors.black,),const SizedBox(width: 6), CustomText(text: '$complexityText'),
                  const SizedBox(width: 30,),
                  Row(children:  [const Icon(Icons.attach_money ,color: Colors.black,),CustomText(text: '$affordabilityText')]
                  ),])]
            
                
              ),
            )
                 
                ]    ),
          )));
       
  }
}
