

import '../constant/linker.dart';

class CustomTextFeild extends StatelessWidget {
  String hintText;
  Color color;
  String labelText;
  TextEditingController controller;
   CustomTextFeild({super.key,
     required this.hintText,
     required this.labelText,
     required this.controller,
     this.color=Colors.white,
   });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    return  TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolor.blue)
          ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: Colors.grey)
        )
      ),
    );
  }
}


class TextFeildPassword extends StatelessWidget {
  String hintText;
  String labelText;
  Color color;
  TextEditingController controller;
  TextFeildPassword({super.key,
    required this.hintText,
    required this.controller,
    required this.labelText,
    this.color=Colors.white,

  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    return  TextFormField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: color,
          hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        suffixIcon: Icon(Icons.remove_red_eye),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolor.blue)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey)
          )
      ),
    );
  }
}

class PrefixFeild extends StatelessWidget {
  String hintText;
  Color color;
  TextEditingController controller;
  Icon icon;
  String lableText;
  PrefixFeild({super.key,
    required this.hintText,
    required this.controller,
    this.color=Colors.white,
    required this.icon,
    required this.lableText,
  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    return  TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        labelText: lableText,
        border: InputBorder.none,
        prefixIcon: icon,
        prefixIconColor: Appcolor.blue,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Appcolor.blue)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey)
          )
      ),
    );
  }
}



class SearchFeild extends StatelessWidget {
  String hintText;
  Color color;
  TextEditingController controller;
  Icon icon;
  SearchFeild({super.key,
    required this.hintText,
    required this.controller,
    this.color=Colors.white,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.sizeOf(context).width;
    return  TextFormField(
    controller: controller,
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.grey),
    border: InputBorder.none,
    prefixIcon: icon,
    prefixIconColor: Appcolor.blue,
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Appcolor.blue)
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: Colors.grey)
    ),
    ),
    );
  }
}






















