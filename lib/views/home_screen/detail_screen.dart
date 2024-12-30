import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:room_finder/controller/components/detail_container.dart';

import '../../controller/constant/linker.dart';

class DetailScreen extends StatelessWidget {
  String image;
  String name;
  String price;
  String location;
  String staus;
  Color color;
   DetailScreen({super.key,
     required this.image,
     required this.name,
     required this.price,
     required this.location,
     required this.staus,
     required this.color,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 90,
          child: SingleChildScrollView(
          child: Column(children: [
            //==========================================>>1st Container for image
            Stack(
              children: [
                Container(
                  height:height*.4,
                  width: double.infinity,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )
                  ),
                ),
                Positioned(
                  left: width*.04,top: height*.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextBold(text: name,color: Colors.white,),
                      Row(
                        children: [
                          CustomTextBold(text: 'Rs.',color: Colors.white,),
                          CustomTextBold(text: price,color: Colors.white,),
                          CustomText(text: '/ per day',color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //==========================================>>Row For Profile
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.03,vertical: height*.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                      radius: width*.08,
                      backgroundImage: AssetImage(Appimages.girl),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: width*.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextBold(text: 'Courtney Henry',fontsize: 18,),
                          CustomText(text: 'Landlord'),
                        ],
                      ),
                    ),
                  ],),
                  Row(children: [
                    Container(
                      height: height*.06,
                      width: width*.13,
                      child: Icon(Icons.phone,color: Colors.white,),
                      decoration: BoxDecoration(
                        color: Appcolor.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: width*.02),
                    Container(
                      height: height*.06,
                      width: width*.13,
                      child: Icon(Icons.chat,color: Colors.white,),
                      decoration: BoxDecoration(
                        color: Appcolor.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],)
                ],),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //==========================================>>1st Row
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.location_on,color: Appcolor.blue,),
                          SizedBox(width: width*.03,),
                          CustomTextBold(text: '1.3 km from\nArslan',fontsize: 17,),
                        ],),
                        Padding(
                          padding:  EdgeInsets.only(right: width*.1),
                          child: Row(
                            children:[
                              Icon(Icons.circle,size: 15,color: color,),
                              SizedBox(width: width*.02,),
                              CustomText(text: staus,color: Colors.grey,),
                            ],),
                        )
                      ],
                    ),
                  ),
                  //==========================================>>2nd Row
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: location,color: Colors.grey,),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextBold(text: 'Property Owned',fontsize: 16,),
                            CustomTextBold(text: 'By: Arslan',fontsize: 16,),
                          ],
                        )
                      ],),
                  ),
                  //==========================================>>3rd Row
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          CustomTextBold(text: '0',fontsize: 17,color: Colors.grey,),
                          SizedBox(width: width*.01,),
                          CustomTextBold(text: 'Applied',fontsize: 17,color: Colors.grey,),
                          SizedBox(width: width*.02,),
                          CustomTextBold(text: '|',color: Colors.grey,),
                          SizedBox(width: width*.01,),
                          CustomTextBold(text: '19',fontsize: 17,color: Colors.grey,),
                          SizedBox(width: width*.01,),
                          CustomTextBold(text: 'views',fontsize: 17,color: Colors.grey,),
                        ],),
                        Row(children: [
                          CustomTextBold(text: 'View on google\nmaps',fontsize: 17,color: Colors.grey,)
                        ],)
                      ],),
                  ),
                  //==========================================>>4th Row
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.01),
                    child: Row(
                      children: [
                        // DetailContainer(image: Appimages.room4),
                        DetailContainer(image: Appimages.room4),
                        DetailContainer(image: Appimages.room5),
                        DetailContainer(image: Appimages.room3),
                        Stack(
                          children: [
                            DetailContainer(image: Appimages.room4),
                            Positioned(
                                left: width*.035,top: height*.02,
                                child: CustomTextBold(text: '+5',color: Colors.white,fontsize: 30,))
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomTextBold(text: 'Description',fontsize: 18,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*.02),
                    child: CustomText(text: '1 big hall room for lalitpure. ktm with the facalities of bike parking and tap water . it offers 1 bedroom,and a 1 common bathroom for whole flat. it is suitible for student only.price is negotiable for student only.'),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.02),
                    child: CustomTextBold(text: 'Facilities',fontsize: 18,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(Icons.check,color: Appcolor.blue,),
                        SizedBox(width: width*.04,),
                        CustomText(text: '1 Big Hall'),
                      ],),
                      Row(children: [
                        Icon(Icons.check,color: Appcolor.blue,),
                        SizedBox(width: width*.04,),
                        CustomText(text: 'Shared Toilet'),
                      ],),
                    ],),
                  Padding(
                    padding:  EdgeInsets.only(bottom: height*.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(Icons.check,color: Appcolor.blue,),
                          SizedBox(width: width*.04,),
                          CustomText(text: 'Bike and Cars Parking'),
                        ],),
                        Row(children: [
                          Icon(Icons.check,color: Appcolor.blue,),
                          SizedBox(width: width*.04,),
                          CustomText(text: 'Water Facility'),
                        ],),
                      ],),
                  ),

                ],),
            ),
          ],),
        ),),
        Expanded(
          flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CustomButton(text: 'Book Now', onpress:(){
                Get.dialog(
                    AlertDialog(
                      backgroundColor: Colors.white,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: height*.2,
                            width: width*1,
                            child: Image(image: AssetImage(Appimages.conratulations)),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: height*.01),
                            child: CustomTextBold(text: 'Congratulations'),
                          ),
                          CustomText(text: 'Your booking is successfully done.',color: Colors.grey,)
                        ],
                      ),
                      actions: [
                       Padding(
                         padding:  EdgeInsets.symmetric(horizontal: width*.17),
                         child: CustomButton(text: 'Done', onpress: (){
                          Navigator.pop(context);
                         }),
                       )
                      ],
                    )
                );
              })
            ],),
        )
      ],)
    );
  }
}
