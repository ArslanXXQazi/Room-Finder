import 'package:room_finder/controller/components/help_container.dart';
import 'package:room_finder/controller/constant/linker.dart';

class GetHelpScreen extends StatelessWidget {
  const GetHelpScreen({super.key});

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
                  CustomTextBold(text: 'Help',color: Colors.white,),
                ],),
              )
          ),),
        Expanded(
            flex: 85,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*.02),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding:  EdgeInsets.only(top: height*.02),
                    child: CustomTextBold(text: 'Frequent Ask Question'),
                  ),
                    HelpContainer(
                    title: 'What do we get here in this app?',
                    subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                    HelpContainer(
                        title: 'What do we get here in this app?',
                        subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                    HelpContainer(
                        title: 'What do we get here in this app?',
                        subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                    HelpContainer(
                        title: 'What do we get here in this app?',
                        subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                    HelpContainer(
                        title: 'What do we get here in this app?',
                        subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                    HelpContainer(
                        title: 'What do we get here in this app?',
                        subtitle: 'That which doesnt kill you makes you stroger, right? Unless it almost kills you, and renders you Weaker. Being Strong is pretty rad though, so go ahead.'),
                ],),
              ),
            ))
      ],),
    );
  }
}
