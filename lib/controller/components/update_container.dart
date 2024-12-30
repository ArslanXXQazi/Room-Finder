

import 'package:flutter/cupertino.dart';
import 'package:room_finder/views/home_screen/detail_screen.dart';

import '../constant/linker.dart';

class UpdateContainer extends StatelessWidget {
  String image;
  String name;
  String price;
  String location;
  String status;
  String appliad;
  String view;
  Color color;
   UpdateContainer({super.key,
     required this.image,
     required this.name,
     required this.price,
     required this.location,
     required this.status,
     this.color=Colors.green,
     this.appliad='20',
     this.view='87',
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: height*.01),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailScreen(
            image: image,
            name: name,
            price: price,
            location: location,
            staus: status,
            color: color,
          )));
        },
        child: Container(
          height: height*.31,
          width: width*12,
         decoration: BoxDecoration(
             color: Appcolor.gray,
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(.4), // Shadow color
               spreadRadius: 2, // How much the shadow spreads
               blurRadius: 10,  // How blurry the shadow is
               offset: Offset(4, 4), // Position of the shadow (x, y)
             ),
           ],
           borderRadius: BorderRadius.circular(10),
         ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
            height: height*.18,
            width: width*.92,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
                child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
            decoration: BoxDecoration(
              color: Appcolor.blue,
              borderRadius: BorderRadius.circular(10),
            )),
             Padding(
               padding:  EdgeInsets.symmetric(vertical: height*.01,horizontal: width*.02),
               child: Column(
                 children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CustomTextBold(text: name,fontsize: 16,),
                     Row(children: [
                       CustomTextBold(text: 'Rs.',fontsize: 17,color: Appcolor.blue,),
                       CustomTextBold(text: '$price /' ,fontsize: 16,color: Appcolor.blue,),
                       CustomText(text: 'per day',fontsize: 16,color: Colors.grey.shade600,),

                     ],)
                   ],),
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: height*.007),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(children: [
                          Icon(Icons.location_on,color:Appcolor.blue ,size: 19,),
                         SizedBox(width: width*.01,),
                         CustomText(text: location,color: Colors.grey.shade600),
                       ],),
                       Row(children: [
                         CustomText(text: '$appliad Appliad',color: Colors.grey.shade600,fontsize: 15,),
                         CustomText(text: '/',fontWeight: FontWeight.bold,fontsize: 15,),
                         CustomText(text: '$view View',color: Colors.grey.shade600,fontsize: 15,)
                       ],)
                     ],),
                 ),
                 Row(children: [
                   Icon(Icons.circle,color: color,size: 13,),
                  SizedBox(width: width*.01,),
                   CustomText(text: status,color: Colors.grey.shade600),
                 ],),
               ],),
             )
          ],),
        ),
      ),
    );
  }
}
