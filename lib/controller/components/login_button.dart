

import '../constant/linker.dart';

class LoginButton extends StatelessWidget {
  String text;
  String image;
   LoginButton({super.key,
     required this.text,
     required this.image,
   });

  @override
  Widget build(BuildContext context) {

    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;

    return ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(width*.9, height*.08),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            side: BorderSide(color: Colors.grey.shade300)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.white,
              radius: width*.04,
            ),
            SizedBox(width: width*.02,),
            CustomText(text: text),
          ],
        ));
  }
}
