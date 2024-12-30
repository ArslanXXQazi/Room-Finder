import 'package:flutter/cupertino.dart';

import '../../controller/constant/linker.dart';

class SearchNav extends StatelessWidget {
   SearchNav({super.key});
TextEditingController adress_controller=TextEditingController();
TextEditingController price_controller=TextEditingController();
TextEditingController resident_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: height*.25,
            width: width*1,
            decoration: BoxDecoration(
                color: Appcolor.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*.1),
            child: Center(
              child: Column(
                children: [
                  CustomTextBold(text: 'Room Finder',color: Colors.white,fontsize: 22,),
                  //=====================================>Main Column
                  Padding(
                    padding:  EdgeInsets.only(top: height*.02),
                    child: Column(
                      children: [
                        //=====================================>>>>Advance Container
                        Card(
                          child: Container(
                            height: height*.47,
                            width: width*.85,
                            child:
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: width*.025,vertical: height*.025),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: width*.017),
                                  child: CustomTextBold(text: 'Advance Search'),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(vertical: height*.02),
                                  child: PrefixFeild(
                                    hintText: 'Enter an adress or city',
                                    controller: adress_controller,
                                    icon: Icon(Icons.location_on,size: 18,),
                                    lableText: 'Enter an adress or city',
                                  ),
                                ),
                                  PrefixFeild(
                                    hintText: 'Enter price range',
                                    controller: price_controller,
                                    icon: Icon(Icons.price_check,size: 18,),
                                    lableText: 'Enter price range',
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.symmetric(vertical: height*.02),
                                    child: PrefixFeild(
                                      hintText: 'Resident Type',
                                      controller: resident_controller,
                                      icon: Icon(Icons.drag_handle_rounded,size: 18,),
                                      lableText: 'Resident Type',
                                    ),
                                  ),
                                CustomButton(text: 'Search now', onpress: (){
                                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>SearchScreen()));
                                }),
                                Padding(
                                  padding:  EdgeInsets.only(top: height*.015),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomText(text: 'Advance search    '),
                                    ],
                                  ),
                                ),
                              ],),
                            ),
                            decoration: BoxDecoration(
                              color: Appcolor.lightgray,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),

                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: height*.02,horizontal: width*.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextBold(text: 'Locations'),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width*.02),
                          child: Column(children: [
                            Padding(
                              padding:  EdgeInsets.only(bottom: height*.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  LocationContainer(
                                      image: Appimages.location3,
                                      found: '30 Found',
                                      location: 'D I Khan'),
                                  LocationContainer(
                                      image: Appimages.location4,
                                      found: '20 Found',
                                      location: 'New Yourk'),
                                ],),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: height*.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  LocationContainer(
                                      image: Appimages.location5,
                                      found: '20 Found',
                                      location: 'Islamabad'),
                                  LocationContainer(
                                      image: Appimages.location6,
                                      found: '20 Found',
                                      location: 'Islamabad'),
                                ],),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(bottom: height*.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  LocationContainer(
                                      image: Appimages.location1,
                                      found: '25 Found',
                                      location: 'Islamabad'),
                                  LocationContainer(
                                      image: Appimages.location2,
                                      found: '20 Found',
                                      location: 'Karachi'),
                                ],),
                            ),
                          ],),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
