import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';

class CustomSwitchListTile extends StatefulWidget {
CustomSwitchListTile({super.key,required this.x,required this.subTitle,required this.title});
    bool x=false;
    String title;
    String subTitle;

  @override
  State<CustomSwitchListTile> createState() => _CustomSwitchListTileState();
}

class _CustomSwitchListTileState extends State<CustomSwitchListTile> {
  @override
  Widget build(BuildContext context) {
    return  SwitchListTile(
    contentPadding: const EdgeInsets.only(right: 20,left: 30),
    title: CustomText(text:widget.title,fontSize: 22),
    subtitle:CustomText(text:widget.subTitle ,fontSize: 15),
     value:widget.x ,
     onChanged: (value){setState(() {
      widget.x=value;
     });},
   );
  }
}