

import '../constant/linker.dart';

class LocationContainer extends StatelessWidget {
  String image;
  String location;
  String found;
   LocationContainer({super.key,
     required this.image,
     required this.found,
     required this.location,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Container(
          height: height*.20,
          width: width*.44,
          child: ClipRRect(
              borderRadius:BorderRadius.circular(20),
              child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius:BorderRadius.circular(20),
          ),
        ),
        Positioned(
          left: width*.03,top: height*.13,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on,size: 20,color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left: width*.02),
                    child: CustomTextBold(text: location,fontsize: 18,color: Colors.white,),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.002,horizontal: width*.01),
                child: CustomText(text: found,color: Colors.white,),
              )
            ],),
        )
      ],
    );
  }
}


class ViewLocationContainer extends StatelessWidget {
  String image;
  String location;
  String found;
  ViewLocationContainer({super.key,
    required this.image,
    required this.found,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.only(bottom: height*.01),
      child: Stack(
        children: [
          Container(
            height: height*.2,
            width: width*.92,
            child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius:BorderRadius.circular(10),
            ),
          ),
          Positioned(
            left: width*.03,top: height*.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on,size: 20,color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(left: width*.02),
                      child: CustomTextBold(text: location,fontsize: 18,color: Colors.white,),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.002,horizontal: width*.01),
                  child: CustomText(text: found,color: Colors.white,),
                )
              ],),
          )
        ],
      ),
    );
  }
}












