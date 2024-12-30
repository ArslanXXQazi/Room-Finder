import 'package:room_finder/controller/constant/linker.dart';

class  NotificationContainer extends StatelessWidget {
  String text;
    NotificationContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.sizeOf(context).height;
    final width=MediaQuery.sizeOf(context).width;
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: height*.01),
      child: Card(
        child: Container(
          width: width*3,
          height: height*.12,
          decoration: BoxDecoration(
              color: Appcolor.lightgray,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade400)
          ),
          child: Row(
            children: [
              Expanded(
                  flex:20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notifications_active_outlined,color: Colors.red,size: 30,)
                    ],)),
              Expanded(
                  flex:80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: text),
                    ],)),
            ],
          ),
        ),
      ),
    );
  }
}
