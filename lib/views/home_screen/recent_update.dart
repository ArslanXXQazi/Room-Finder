
import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class RecentlyUpdated extends StatelessWidget {
  RecentlyUpdated({super.key});
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
                    SizedBox(width: width*.10,),
                    CustomTextBold(text: 'Recently Added Properties',color: Colors.white,fontsize: 20,),
                  ],),
                )
            )),
        Expanded(
            flex: 85,
            child: Padding(
              padding:  EdgeInsets.only(top: height*.03),
              child: SingleChildScrollView(
                child: Column(children: [
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
                    color: Colors.red,
                  ),
                  UpdateContainer(
                    image: Appimages.room5,
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
                    color: Colors.red,
                  ),
                  UpdateContainer(
                    image: Appimages.room3,
                    name: '1 BKH at Lalitpure',
                    price: '8000',
                    location: 'Mahalaximi Lalitpure',
                    status: 'Avilible',
                  ),
                ],),
              ),
            )
        ),
      ],),
    );
  }
}
