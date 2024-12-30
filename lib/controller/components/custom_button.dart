import 'package:flutter/material.dart';
import 'package:room_finder/controller/components/custom_text.dart';
import 'package:room_finder/controller/constant/colors.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color color;
  VoidCallback onpress;
   CustomButton({super.key,
     required this.text,
     this.color=Appcolor.blue,
     required this.onpress,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return ElevatedButton(onPressed: onpress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(width*.9, height*.06),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        child: CustomTextBold(text: text,color: Colors.white,));
  }
}
