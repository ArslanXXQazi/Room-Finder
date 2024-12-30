import 'package:room_finder/controller/components/notification_container.dart';
import 'package:room_finder/controller/constant/linker.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
               CustomTextBold(text: 'Notifications',color: Colors.white,),
             ],),
           )
       ),),
        Expanded(
          flex: 85,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.03),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding:  EdgeInsets.only(top: height*.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomTextBold(text: 'Today'),
                      CustomText(text: 'Marl all read'),
                    ],),
                  ),
                 NotificationContainer(text: 'There are 4 avilible properties, you recently selected. Click here for more details'),
                 NotificationContainer(text: 'There are 1 avilible properties, you recently selected. Click here for more details'),
                  CustomTextBold(text: 'Yesterday'),
                    NotificationContainer(text: 'There are 3 avilible properties, you recently selected. Click here for more details'),
                    NotificationContainer(text: 'There are 6 avilible properties, you recently selected. Click here for more details'),
                    NotificationContainer(text: 'There are 9 avilible properties, you recently selected. Click here for more details'),
                ],),
              ),
            ))
      ],),
    );
  }
}
