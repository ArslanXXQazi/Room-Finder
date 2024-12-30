


import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class HomeNav extends StatelessWidget {
  HomeNav({super.key});
TextEditingController search_controller=TextEditingController();
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
                  //=====================================>>>>Search Container
                  Padding(
                    padding:  EdgeInsets.only(top: height*.02),
                    child: Card(
                      child: Container(
                        height: height*.3,
                        width: width*.85,
                       child:
                       Padding(
                         padding:  EdgeInsets.symmetric(horizontal: width*.025,vertical: height*.025),
                         child: Column(children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Padding(
                                 padding:  EdgeInsets.only(left: width*.017),
                                 child: CustomTextBold(text: 'Find a property anywhere'),
                               ),
                             ],
                           ),
                           Padding(
                             padding:  EdgeInsets.symmetric(vertical: height*.02),
                             child: PrefixFeild(
                               hintText: 'Search adress or near you',
                               controller: search_controller,
                               icon: Icon(Icons.location_on,size: 18,),
                               lableText: 'Search Adress',
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top:  height*.49),
            child: Column(
              children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*.02),
              child: Column(children: [
                //=====================================>>>>Row FOr Container rooms
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RowContainer(text: 'Flat'),
                      RowContainer(text: 'Rooms'),
                      RowContainer(text: 'Hall'),
                      RowContainer(text: 'Rent'),
                      RowContainer(text: 'House'),
                    ],),
                ),
                //=====================================>>>>View All Button
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextBold(text: 'Reacently Added Properties',fontsize: 18,),
                      TextButton(onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>RecentlyAdded()));
                      },
                          child: CustomText(text: 'View All',color: Appcolor.blue,)),
                    ],
                  ),
                ),
                //=====================================>>>>Custom ListTile
                CustomListTile(image: Appimages.room3,
                  name: '1 BKH at Lalitpure',
                  price: '8000',
                  location: 'Mahalixmi Lalitpure',
                  status: 'Avilible',
              ),
                CustomListTile(
                  image: Appimages.room4,
                  name: 'Big Room',
                  price: '5000',
                  location: 'Lahore',
                  status: 'Unavilible',
                  color: Colors.red,
                ),
                CustomListTile(
                  image: Appimages.room5,
                  name: 'Small Room',
                  price: '3000',
                  location: 'D I Khan',
                  status: 'Avilible',
                ),
                //=====================================>>>>View All Button & location
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextBold(text: 'Location',fontsize: 18,),
                      TextButton(onPressed: (){
                        Navigator.push(context, CupertinoPageRoute(builder: (context)=>LocationScreen()));
                      },
                          child: CustomText(text: 'View All',color: Appcolor.blue,)),
                    ],
                  ),
                ),
                //=====================================>>>>Location Container
                Column(children: [
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
                //=====================================>>>>View All Button & Reacent Update
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextBold(text: 'Reacent Updates'),
                    TextButton(onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>RecentlyUpdated()));
                    },
                        child: CustomText(text: 'See all',color: Appcolor.blue,))
                  ],
                ),
                //=====================================>>>>Update Container
                UpdateContainer(
                  image: Appimages.room3,
                  name: '1 BKH at Lalitpure',
                  price: '8000',
                  location: 'Mahalaximi Lalitpure',
                  status: 'Avilible',
                ),
                UpdateContainer(
                  image: Appimages.room4,
                  name: '1 BKH at Lalitpure',
                  price: '8000',
                  location: 'Mahalaximi Lalitpure',
                  status: 'Avilible',
                ),
                UpdateContainer(
                  image: Appimages.room5,
                  name: '1 BKH at Lalitpure',
                  price: '8000',
                  location: 'Mahalaximi Lalitpure',
                  status: 'Avilible',
                ),

              ],),
            )
            ],),
          )
        ],),
      )
    );
  }
}
