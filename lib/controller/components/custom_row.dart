
import 'package:room_finder/controller/constant/linker.dart';

class CustomRow extends StatelessWidget {
  String text;
  Icon icon;
  VoidCallback ontap;
   CustomRow({super.key,required this.text,required this.icon,required this.ontap});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015),
      child: GestureDetector(
        onTap: ontap,
        child: Row(children: [
         icon,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.04),
            child: CustomText(text: text,fontsize: 18,),
          ),
        ],),
      ),
    );
  }
}
