
import 'package:room_finder/controller/constant/linker.dart';

class CallMeButton extends StatelessWidget {
  String text;
  IconData iconData;
  VoidCallback ontap;
  Color color;
  Color fontcolor;
  Color iconcolor;
   CallMeButton({super.key,
     required this.text,
     required this.iconData,
     required this.ontap,
     this.color=Colors.white,
     this.fontcolor=Colors.white,
     this.iconcolor=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        width: width*.43,
        height: height*.065,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,color: iconcolor,),
            SizedBox(width: width*.03,),
            CustomText(text: text,fontWeight: FontWeight.bold,color:fontcolor,),
          ],),
      ),
    );
  }
}
