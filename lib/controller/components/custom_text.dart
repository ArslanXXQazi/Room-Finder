

import '../constant/linker.dart';

class CustomTextBold extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  Color color;
  double fontsize;
  CustomTextBold({super.key,
    required this.text,
    this.color=Colors.black,
    this.fontWeight=FontWeight.bold,
    this.fontsize=20,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize:fontsize ,
        color:color ,
      ),
    );
  }
}



class CustomText extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  Color color;
  double fontsize;
  CustomText({super.key,
    required this.text,
    this.color=Colors.black,
    this.fontWeight=FontWeight.normal,
    this.fontsize=16,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize:fontsize ,
        color:color ,
      ),
    );
  }
}
