

import '../../controller/constant/linker.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
TextEditingController search_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    final height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Appcolor.blue,
        centerTitle: true,
        title: CustomTextBold(text: 'Search Detail',color: Colors.white,),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 18,),)
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: height*.18,
                decoration: BoxDecoration(
                    color:Appcolor.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: width*.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Padding(
                      padding:EdgeInsets.only(left: width*.01),
                      child: CustomTextBold(text: 'Search for Property',color: Colors.white,),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: height*.01),
                      child: SearchFeild(hintText: 'Search', controller: search_controller, icon: Icon(Icons.search)),
                    ),
                  ],),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: width*.04),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: height*.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextBold(text: 'Showing Result'),
                          CustomText(text: '3 Result',color: Colors.grey,),
                        ],
                      ),
                    ),
                    UpdateContainer(
                      image: Appimages.room3,
                      name: '1 BKH at Lalitpure',
                      price: '8000',
                      location: 'Mahalaximi Lalitpure',
                      status: 'Avilible',
                    ),
                    UpdateContainer(
                      image: Appimages.room4,
                      name: '1 BKH at Lalitpure',
                      price: '8000',
                      location: 'Mahalaximi Lalitpure',
                      status: 'Avilible',
                    ),
                    UpdateContainer(
                      image: Appimages.room5,
                      name: '1 BKH at Lalitpure',
                      price: '8000',
                      location: 'Mahalaximi Lalitpure',
                      status: 'Avilible',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],),
      ),
    );
  }
}
