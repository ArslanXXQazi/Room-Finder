import 'package:room_finder/controller/constant/linker.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
                      padding:  EdgeInsets.only(left: width*.0),
                      child:  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,))
                  ),
                  SizedBox(width: width*.3,),
                  CustomTextBold(text: 'About Us',color: Colors.white,),
                ],),
              )
          ),),
        Expanded(
            flex: 85,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.08),
              child: Column(children: [
                Container(
                  width: width*1,
                  height: height*.5,
                  decoration: BoxDecoration(
                    color: Appcolor.lightgray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width*.02),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: height*.02),
                          child: CustomTextBold(text: 'About The Company'),
                        ),
                        CustomText(text: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.',color: Colors.grey,),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: height*.02),
                          child: CustomTextBold(text: 'About the Members'),
                        ),
                        CustomText(text: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.',color: Colors.grey,),

                      ],
                    ),
                  ),
                )
              ],),
            ))
      ],),
    );
  }
}
