
import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/Custom_Text.dart';

class CustomListTile extends StatelessWidget {
 CustomListTile({
    super.key, this.text,  this.icon,this.onTap
  });
  final String? text;
  final IconData? icon;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:CustomText(text: text!,color:Theme.of(context).colorScheme.primary,fontSize: 20,),
      leading: Icon(icon,color:Theme.of(context).colorScheme.onSurface,),
      onTap: onTap,
     );
  }
}