
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:room_finder/controller/components/custom_row.dart';
import 'package:room_finder/controller/constant/linker.dart';
import 'package:room_finder/views/home_screen/about_us.dart';
import 'package:room_finder/views/home_screen/get_help_screen.dart';
import 'package:room_finder/views/home_screen/notification_screen.dart';
import 'package:room_finder/views/home_screen/recent_viewed_screen.dart';

class SettingNav extends StatelessWidget {
  const SettingNav({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
          width: width*1,
          height: height*.25,
          decoration: BoxDecoration(
            color: Appcolor.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
          ),
        ),
        Center(
          child: Padding(
            padding:  EdgeInsets.only(top: height*.12),
            child: Column(children: [
              Padding(
                padding:  EdgeInsets.only(bottom: height*.02),
                child: CustomTextBold(text: 'Account',color: Colors.white,),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.01),
                child: CircleAvatar(
                  radius: width*.13,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: width*.12,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage(Appimages.girl)
                  ),
                ),
              ),
              CustomTextBold(text: 'Courtney Henry'),
              CustomText(text: '10 Applied | Kathmandu',color: Colors.grey,),
              //========================================>>>Edit Profile Container
              Padding(
                padding: EdgeInsets.only(top: height*.03),
                child: Container(
                  width: width*.9,
                  height: height*.15,
                 decoration: BoxDecoration(
                   color: Colors.blue.shade900.withOpacity(.06),
                   borderRadius: BorderRadius.circular(10),
                 ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Row(children: [
                        Icon(Icons.person,color: Appcolor.blue,),
                        SizedBox(width: width*.03,),
                        CustomTextBold(text: 'Edit Profile',color: Appcolor.blue,fontsize: 17,),
                      ],),
                      SizedBox(height: height*.01,),
                      Padding(
                        padding:  EdgeInsets.only(left: width*.09),
                        child: CustomText(text: 'Edit all the basic profile informaition associatedwith your profile'),
                      ),
                    ],),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*.1,vertical: height*.03),
                child: Column(children: [
                 CustomRow(
                   text: 'Notification',
                   icon:Icon(Icons.notifications_active_outlined, color: Appcolor.blue,),
                     ontap: (){
                     Navigator.push(context, CupertinoPageRoute(builder: (context)=>NotificationScreen()));
                     }
                 ),
                 CustomRow(text: 'Recent Viewed',
                     icon:Icon(Icons.photo_camera_back,color: Appcolor.blue,),
                     ontap: (){
                       Navigator.push(context, CupertinoPageRoute(builder: (context)=>RecentViewedScreen()));
                     }
                 ),
                 CustomRow(
                     text: 'Get Help',
                     icon:Icon(Icons.edit_note_sharp,color: Appcolor.blue,),
                     ontap: (){
                       Navigator.push(context, CupertinoPageRoute(builder: (context)=>GetHelpScreen()));
                     }),
                 CustomRow(
                     text: 'About us',
                     icon:Icon(Icons.info_outline,color: Appcolor.blue,),
                     ontap: (){
                       Navigator.push(context, CupertinoPageRoute(builder: (context)=>AboutUs()));
                     }),
                 CustomRow(
                     text: 'Sign Out',
                     icon:Icon(Icons.output_rounded,color: Appcolor.blue,),
                     ontap: (){
                       Get.dialog(
                           AlertDialog(
                             backgroundColor: Colors.white,
                             title: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   height: height*.2,
                                   width: width*1,

                                   child: Image(image: AssetImage(Appimages.warning)),
                                 ),
                                 Padding(
                                   padding:  EdgeInsets.only(top: height*.01),
                                   child: CustomTextBold(text: 'Are you sure you want to logout?',fontsize: 17,),
                                 ),
                               ],
                             ),
                             actions: [
                             ElevatedButton(onPressed: (){Navigator.pop(context);},
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.white,
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10),),
                                 side: BorderSide(
                                   color: Colors.grey, // Border color
                                   width: 1, // Border width
                                 ),
                               ),
                               child: CustomTextBold(text: 'Cancle',fontsize: 15,),),
                             ElevatedButton(
                               onPressed: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));},
                               style: ElevatedButton.styleFrom(
                                 backgroundColor: Colors.blue,
                                 shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(10),),
                                 side: BorderSide(
                                   color: Colors.grey, // Border color
                                   width: 1, // Border width
                                 ),
                               ),
                               child: CustomTextBold(text: 'Log Out',fontsize: 15,color: Colors.white,),),

                             ],
                           )
                       );
                     }),

                ],),
              )
            ],),
          ),
        ),
        Positioned(
          left: width*.57,top: height*.26,
          child: CircleAvatar(
            backgroundColor: Appcolor.lightgray,
            radius: width*.03,
            child: Icon(Icons.add,color: Appcolor.blue,),
          ),
        )
      ],),
    );
  }
}

