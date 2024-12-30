import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  TextEditingController mail_controller=TextEditingController();
  TextEditingController name_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  TextEditingController confirmpassword_controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //==================================>>used for blue and white Screen
          Column(
            children: [
              //=====================================>>>blue Screen
              Expanded(
                  flex: 35,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Appcolor.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )
                    ),
                  )),
              //=====================================>>>white Scree
              Expanded(
                  flex: 65,
                  child: Container(color: Colors.white,)),
            ],),
          SingleChildScrollView(
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: height*.09,horizontal: width*.04),
                child: Column(children: [
                  CustomTextBold(text: 'Room Finder',color: Colors.white,),
                  CustomText(text: 'Ultimate property Finder',color: Colors.white,),
                  //======================================>> Send Code Container
                  Padding(
                    padding:  EdgeInsets.only(top: height*.03),
                    child: Card(
                      child: Container(
                        height: height*.45,
                        width: width*.85,
                        decoration: BoxDecoration(
                          color: Appcolor.lightgray,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: width*.05),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CustomTextBold(text: 'Create an Account'),
                                Padding(
                                  padding:  EdgeInsets.only(top: height*.02),
                                  child: CustomTextFeild(hintText: 'Full Name', controller: name_controller,labelText: 'Full Name',),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(vertical: height*.01),
                                  child: CustomTextFeild(hintText: 'Email Adress', controller: mail_controller,labelText: 'Email Adress',),
                                ),
                                TextFeildPassword(hintText: "Password", controller: password_controller,labelText: 'Password',),
                                Padding(
                                  padding:  EdgeInsets.symmetric(vertical: height*.01),
                                  child: TextFeildPassword(hintText: "Confirm Password", controller: confirmpassword_controller,labelText: 'Confirm Password',),
                                ),
                                CustomButton(text: 'Create Account', onpress: (){
                                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
                                  toastification.show(
                                    context: context,
                                    title: Text('Sign in'),
                                    type: ToastificationType.success,
                                    primaryColor: Colors.green,
                                    closeOnClick: true,
                                    showProgressBar: true,
                                    autoCloseDuration: Duration(seconds: 3),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),),
                      ),
                    ),
                  ),
                  //===========================================>> Sign up here Text
                  Padding(
                    padding: EdgeInsets.only(top: height*.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: 'Have an account?'),
                       TextButton(onPressed: (){
                         Navigator.push(context, CupertinoPageRoute(builder: (context)=>SigninView()));
                       },
                           child:CustomText(text:  'Sign in Here',color: Appcolor.blue,)),
                      ],),
                  )
                ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
