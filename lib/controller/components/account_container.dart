import 'package:room_finder/controller/constant/linker.dart';

class AccountContainer extends StatelessWidget {
  String image;
  String name;
  String location;
  String price;
  String ratting;
  String status;
  Color color;
   AccountContainer({super.key,
     required this.image,
     required this.name,
     required this.location,
     required this.price,
     required this.ratting,
     required this.status,
     this.color=Colors.red,


   });

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return  Padding(
      padding:  EdgeInsets.only(bottom: height*.02),
      child: Container(
        width: width*.9,
        height: height*.25,
        decoration: BoxDecoration(
          color: Appcolor.lightgray,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*.02,vertical: height*.02),
          child: Row(children: [
            Expanded(
                flex:35,
                child: Column(
                  children: [
                    Container(
                      width: width*.29,
                      height: height*.14,
                      decoration: BoxDecoration(
                        color: Appcolor.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
                    )
                  ],
                )),
            Expanded(
                flex: 65,
                child: Padding(
                  padding:  EdgeInsets.only(left: width*.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height*.052,
                            width: width*.25,
                            child: Center(child: CustomTextBold(text: 'Rs. $price',color: Colors.white,fontsize: 18,),),
                            decoration: BoxDecoration(
                              color: Appcolor.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: height*.052,
                            width: width*.17,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(text: ratting,color: Colors.white,),
                                SizedBox(width: width*.01,),
                                Icon(Icons.star,color: Colors.white,size: 18,),
                              ],),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: height*.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextBold(text: name,fontsize: 16,),
                            CustomText(text: location,color: Colors.grey,),
                          ],),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: height*.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Icon(Icons.location_on,color: Appcolor.blue,size: 20,),
                              SizedBox(width: width*.01,),
                              CustomText(text: '1.2 km from\nislamabad',color: Colors.grey,),
                            ],),
                            Row(children: [
                              Icon(Icons.circle,size: 13,color: color),
                              SizedBox(width: width*.01,),
                              CustomText(text: status,color: Colors.grey,),
                            ],)
                          ],),
                      ),
                    ],
                  ),
                )),
          ],),
        ),
      ),
    );
  }
}
