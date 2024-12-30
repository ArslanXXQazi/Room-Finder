import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({super.key});
  TextEditingController mail_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
            flex: 15,
            child: Container(
                decoration: BoxDecoration(
                    color: Appcolor.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: height*.05),
                  child: Row(children: [
                    Padding(
                        padding:  EdgeInsets.only(left: width*.04),
                        child:  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,))
                    ),
                    SizedBox(width: width*.22,),
                    CustomTextBold(text: 'Locations',color: Colors.white,fontsize: 23,),
                  ],),
                )
            )),
        Expanded(
            flex: 85,
            child: Padding(
              padding:  EdgeInsets.only(top: height*.02),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 ViewLocationContainer(
                     image: Appimages.location7,
                     found: '20 found',
                     location: 'Islamabad'),
                  ViewLocationContainer(
                      image: Appimages.location3,
                      found: '20 found',
                      location: 'Islamabad'),
                  ViewLocationContainer(
                      image: Appimages.location1,
                      found: '20 found',
                      location: 'Islamabad'),
                  ViewLocationContainer(
                      image: Appimages.location6,
                      found: '20 found',
                      location: 'Islamabad'),
                  ViewLocationContainer(
                      image: Appimages.location8,
                      found: '20 found',
                      location: 'Islamabad'),
                  ViewLocationContainer(
                      image: Appimages.location2,
                      found: '20 found',
                      location: 'Islamabad'),
                ],),
              ),
            )
        ),
      ],),
    );
  }
}
