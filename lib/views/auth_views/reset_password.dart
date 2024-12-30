

import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
TextEditingController mail_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 20,
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
                           child:  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,))
                         ),
                  SizedBox(width: width*.18,),
                  CustomTextBold(text: 'Reset Password',color: Colors.white,),
                ],),
              )
        )),
        Expanded(
          flex: 80,
            child: Container(
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: height*.08,horizontal: width*.05),
              child: Column(children: [
              CustomText(text: 'Enter your email adress below',color: Colors.grey,),
              CustomText(text: 'to reset password',color: Colors.grey,),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: height*.03),
                  child: CustomTextFeild(hintText: 'Email Adress', controller: mail_controller,labelText: 'Email Adess',)
                ),
                CustomButton(text: 'Reset Password',onpress: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
                },),
              ],),
            ),),
        )),
      ],),
    );
  }
}
