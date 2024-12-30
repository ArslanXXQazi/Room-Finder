import 'package:room_finder/controller/constant/linker.dart';

class HelpContainer extends StatelessWidget {
  String title;
  String subtitle;
   HelpContainer({super.key,required this.title,required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.015),
      child: Container(
        width: width*1,
        height: height*.20,
        decoration: BoxDecoration(
          color: Appcolor.lightgray,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: height*.02),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: width*.02),
                child: Row(children: [
                  Container(
                    width: width*.1,
                    height: height*.04,
                    decoration: BoxDecoration(
                      color: Appcolor.lightblue.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Icon(Icons.edit_note_sharp,color: Appcolor.blue,size: 30,),),
                  ),
                  SizedBox(width: width*.04,),
                  CustomTextBold(text: title,fontsize: 17,)
                ],),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*.15),
                child: CustomText(text:subtitle,color: Colors.grey,),
              )
            ],),
        ),
      ),
    );
  }
}
