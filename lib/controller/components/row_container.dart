


import '../constant/linker.dart';

class RowContainer extends StatelessWidget {

  String text;

   RowContainer({super.key,

     required this.text,
   });
  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*.011),
      child: Card(
        child: Container(
          height: height*.05,
          width: width*.25,
          child: Center(
              child: CustomText(
                text: text,
                fontWeight: FontWeight.bold,
                color:Colors.grey.shade600,),
          ),
          decoration: BoxDecoration(
            color: Appcolor.gray,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
