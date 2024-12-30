
import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.push(context, CupertinoPageRoute(builder: (context)=>SendCode()));
    });
  }
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;


    return Scaffold(
      backgroundColor: Appcolor.blue,
      body: Center(child: CircleAvatar(
        radius: width*.3,
        backgroundColor: Colors.white.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextBold(text: 'Room Finder',color: Colors.white,),
            SizedBox(height: height*.001,),
            CustomText(text: 'Ultimate property finder',color: Colors.white,),
        ],),
      ),),
    );
  }
}
