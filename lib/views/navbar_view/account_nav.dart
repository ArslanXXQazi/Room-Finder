
import 'package:room_finder/controller/components/account_container.dart';
import 'package:room_finder/controller/components/call_me_button.dart';
import 'package:room_finder/controller/constant/linker.dart';

class AccountNav extends StatelessWidget {
  const AccountNav({super.key});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            width: width*1,
            height: height*.22,
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
              padding:  EdgeInsets.symmetric(vertical: height*.09,horizontal: width*.049),
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
                  padding:  EdgeInsets.symmetric(vertical: height*.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CallMeButton(
                        text: 'Call Me',
                        iconData: Icons.phone,
                        fontcolor: Appcolor.blue,
                        iconcolor: Appcolor.blue,
                        ontap: (){},),
                      SizedBox(width: width*.03,),
                      CallMeButton(
                        text: 'Message Me',
                        iconData: Icons.chat,
                        color: Appcolor.blue,
                        ontap: (){},
                      ),
                    ],
                  ),
                ),
            //=======================================================>>Container email location phone
            Container(
              width: width*.9,
              height: height*.2,
              decoration: BoxDecoration(
                  color: Appcolor.lightgray,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey.shade300)
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    CustomTextBold(text: 'Email',fontsize: 16,),
                    CustomText(text: 'arslanqazi199@gmail.com',color: Colors.grey.shade600,),
                  ],),
                  Container(
                    height: height*.001,
                    width: width*1,
                      color: Colors.grey.shade600
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextBold(text: 'Location',fontsize: 16,),
                      CustomText(text: 'Dera ismail Khan',color: Colors.grey.shade600),
                    ],),
                  Container(
                    height: height*.001,
                    width: width*1,
                      color: Colors.grey
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextBold(text: 'Phone',fontsize: 16,),
                      CustomText(text: '(+92)3179645437',color: Colors.grey.shade600),
                    ],)
                ],),
              ),
            ),
                //=======================================================>>Row for Applied and like
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.03),
                  child: Row(
                    children: [
                      Container(
                          height: height*.055,
                          width: width*.3,
                         decoration: BoxDecoration(
                             color: Appcolor.lightgray,
                           borderRadius: BorderRadius.circular(10),
                         ),
                        child: Center(child: CustomTextBold(text: 'Applied (7)',fontsize: 17,color: Appcolor.blue,)),
                      ),
                      SizedBox(width: width*.05,),
                      CustomTextBold(text: 'Liked',fontsize: 17,color: Colors.grey,),
                    ],
                  ),
                ),
                //=======================================================>>Container for room price
                AccountContainer(
                    image: Appimages.room3,
                    name: '1 BKH at Lalitpure',
                    location: 'Islamabad',
                    price: '9000',
                    ratting: '5.0',
                    status: 'Booked'
                ),
                AccountContainer(
                    image: Appimages.room4,
                    name: '2 Bed Room Lahore',
                    location: 'Lahore',
                    price: '9000',
                    ratting: '5.0',
                    status: 'Booked'
                ),
                AccountContainer(
                    image: Appimages.room5,
                    name: '1 BKH at Lalitpure',
                    location: 'Islamabad',
                    price: '9000',
                    ratting: '5.0',
                    status: 'Booked'
                ),
                AccountContainer(
                    image: Appimages.room4,
                    name: '1 BKH at Lalitpure',
                    location: 'Islamabad',
                    price: '9000',
                    ratting: '5.0',
                    status: 'Booked'
                ),
                AccountContainer(
                    image: Appimages.room3,
                    name: '1 BKH at Lalitpure',
                    location: 'Islamabad',
                    price: '9000',
                    ratting: '5.0',
                    status: 'Booked'
                ),
              ],),
            ),
          ),
          //==================================================>>Add pic container
          Positioned(
            left: width*.57,top: height*.26,
            child: CircleAvatar(
              backgroundColor: Appcolor.lightgray,
              radius: width*.03,
              child: Icon(Icons.add,color: Appcolor.blue,),
            ),
          )
        ],),
      ),
    );
  }
}

