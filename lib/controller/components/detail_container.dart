
import 'package:room_finder/controller/constant/linker.dart';

class DetailContainer extends StatelessWidget {
  String image;
   DetailContainer({super.key,
     required this.image,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*.01),
      child: Container(
        height: height*.09,
        width: width*.2,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image: AssetImage(image),fit: BoxFit.cover,)),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
