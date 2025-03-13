import 'package:flutter/material.dart';
import 'package:zoomclone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  final String text;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(onPressed: onPressed,
       child: Text(text,
       style:const TextStyle(fontSize:17 ) ,),
       style:ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: const Size(double.infinity, 50),
       ) 
       ),
    );
  }
}