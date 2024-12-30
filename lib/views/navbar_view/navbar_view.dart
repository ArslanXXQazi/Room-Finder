import 'package:room_finder/views/navbar_view/account_nav.dart';
import 'package:room_finder/views/navbar_view/search_nav.dart';
import 'package:room_finder/views/navbar_view/setting_nav.dart';

import '../../controller/constant/linker.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _selectedindex=0;
  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List widgetOptions=
  [
    HomeNav(),
    SearchNav(),
    SettingNav(),
    AccountNav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedindex,
          onTap: navOntab,
          selectedItemColor: Appcolor.blue,
          /// unselectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Serch'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
          ]
      ),
    );
  }
}