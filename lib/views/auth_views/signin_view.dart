import 'package:flutter/cupertino.dart';
import '../../controller/constant/linker.dart';


class SigninView extends StatelessWidget {
   SigninView({super.key});

TextEditingController mail_controller=TextEditingController();
TextEditingController password_controller=TextEditingController();

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
                  Padding(
                    padding:  EdgeInsets.only(top: height*.01),
                    child: CustomText(text: 'Ultimate property Finder',color: Colors.white,),
                  ),
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
                                CustomTextBold(text: 'Sign in to Continue'),
                                Padding(
                                  padding:  EdgeInsets.symmetric(vertical: height*.02),
                                  child: CustomTextFeild(hintText: 'Email Adress', controller: mail_controller,labelText: 'Email Adress',),
                                ),
                                TextFeildPassword(hintText: "Password", controller: password_controller,labelText: 'Password',color: Colors.white,),
                                Padding(
                                  padding:  EdgeInsets.only(top: height*.03),
                                  child: CustomButton(text: 'Log in', onpress: (){
                                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>NavBarView()));
                                    toastification.show(
                                      context: context,
                                      title: Text('Login Successfully'),
                                      type: ToastificationType.success,
                                      primaryColor: Colors.green,
                                      closeOnClick: true,
                                      showProgressBar: true,
                                      autoCloseDuration: Duration(seconds: 3),
                                    );
                                  }),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(onPressed: (){
                                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>ResetPassword()));
                                    },
                                        child:TextButton(onPressed: (){
                                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>ResetPassword()));
                                          toastification.show(
                                            context: context,
                                            title: Text('Reset Password'),
                                            type: ToastificationType.success,
                                            primaryColor: Colors.green,
                                            closeOnClick: true,
                                            showProgressBar: true,
                                            autoCloseDuration: Duration(seconds: 3),
                                          );
                                        },
                                            child: CustomText(text: 'Reset Password?')),
                                    )  ],)
                              ],
                            ),
                          ),
                        ),),
                      ),
                    ),
                  ),
                  //===========================================>> OR Sign up Text
                  Padding(
                    padding:  EdgeInsets.only(top: height*.04),
                    child: CustomText(text: 'Or Sign Up with',fontsize: 20,),
                  ),
                  //===========================================>> Facebook BUtton
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: height*.02),
                    child:LoginButton(text: 'Continue With Facebook', image: Appimages.facebook),
                  ),
                  //===========================================>> google Button
                  LoginButton(text: 'Continue With Google', image: Appimages.google),
                  //===========================================>> Sign up here Text
                  Padding(
                    padding: EdgeInsets.only(top: height*.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: 'New Member?'),
                        TextButton(onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignUpView()));
                          toastification.show(
                            context: context,
                            title: Text('Sign up here'),
                            type: ToastificationType.success,
                            primaryColor: Colors.green,
                            closeOnClick: true,
                           showProgressBar: true,
                            autoCloseDuration: Duration(seconds: 3),
                          );
                        },
                            child: CustomText(text: 'Sign up Here',color: Appcolor.blue,)),
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
