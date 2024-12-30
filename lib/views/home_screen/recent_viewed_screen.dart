import 'package:room_finder/controller/components/notification_container.dart';
import 'package:room_finder/controller/constant/linker.dart';

class RecentViewedScreen extends StatelessWidget {
  const RecentViewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 15,
          child:  Container(
              decoration: BoxDecoration(
                color: Appcolor.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: height*.05),
                child: Row(children: [
                  Padding(
                      padding:  EdgeInsets.only(left: width*.04),
                      child:  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,))
                  ),
                  SizedBox(width: width*.18,),
                  CustomTextBold(text: 'Recently viewed',color: Colors.white,),
                ],),
              )
          ),),
        Expanded(
            flex: 85,
            child: SingleChildScrollView(
              child: Column(children: [
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
                CustomListTile(
                  image: Appimages.room4,
                  name: 'Big Room',
                  price: '5000',
                  location: 'Lahore',
                  status: 'Unavilible',
                  color: Colors.red,
                ),
                CustomListTile(image: Appimages.room3,
                  name: '1 BKH at Lalitpure',
                  price: '8000',
                  location: 'Mahalixmi Lalitpure',
                  status: 'Avilible',
                ),
                CustomListTile(
                  image: Appimages.room5,
                  name: 'Small Room',
                  price: '3000',
                  location: 'D I Khan',
                  status: 'Avilible',
                ),
              ],),
            ))
      ],),
    );
  }
}
