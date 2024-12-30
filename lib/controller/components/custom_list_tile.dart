

import 'package:flutter/cupertino.dart';
import 'package:room_finder/views/home_screen/detail_screen.dart';

import '../constant/linker.dart';

class CustomListTile extends StatelessWidget {
  String image;
  String name;
  String price;
  String location;
  String status;
  Color color;

  CustomListTile({super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
    required this.status,
    this.color=Colors.green,

  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return  Padding(
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
            height: height*.14,
            width: width*.95,
            decoration: BoxDecoration(
              color: Appcolor.gray,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.4), // Shadow color
                  spreadRadius: 1, // How much the shadow spreads
                  blurRadius: 10,  // How blurry the shadow is
                  offset: Offset(2, 2), // Position of the shadow (x, y)
                ),
              ],
            ),
            child: Row(children: [
              Expanded(
                flex: 30,
                child: Padding(
                  padding:  EdgeInsets.only(left: width*.02),
                  child: Container(
                    height: height*.12,
                    width: width*.25,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(image: AssetImage(image),fit: BoxFit.cover)),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),),
              Expanded(
                flex: 70,
                child: Container(
                  height: height*.12,
                  width: width*.25,
                  color: Appcolor.gray,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextBold(text:name,fontsize: 17,),
                            Row(children: [
                            Icon(Icons.circle,color:color,size: 10,),
                              Padding(
                                padding:  EdgeInsets.only(left: width*.01),
                                child: CustomText(text: status,color: Colors.grey.shade600,),
                              ),
                            ],)
                          ],),

                        Padding(
                          padding:  EdgeInsets.only(top: height*.01),
                          child: Row(children: [
                            CustomTextBold(text: 'Rs.',color: Appcolor.blue,fontsize: 16,),
                            CustomTextBold(text: '$price /',color: Appcolor.blue,fontsize: 16,),
                            CustomText(text: ' per month',color: Colors.grey.shade600,),
                          ],),
                        ),

                        Padding(
                          padding:  EdgeInsets.only(top: height*.02),
                          child: Row(children: [
                            Icon(Icons.location_on,size: 17,color: Appcolor.blue,),
                            SizedBox(width: width*.01,),
                            CustomText(text: location,color: Colors.grey.shade600,),
                          ],),
                        )
                      ],),
                  ),
                ),),
            ],)
        ),
      ),
    );
  }
}
