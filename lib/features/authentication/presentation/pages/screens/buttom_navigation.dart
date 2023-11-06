

import '../../widgets/exports/exports.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex  = 0;
  List pages=[
   Home(),
    Calendar(),
   Alert(),
   More()
   
  ];

  void _onTap(int selectedItem){
    setState(() {
      currentindex = selectedItem;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[
          currentindex
        ],
            bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: currentindex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              onTap: _onTap,
              items:const [
                BottomNavigationBarItem(
                  label: 'Home',
                    icon: Icon(Icons.home)
                ),
                BottomNavigationBarItem(
                    label: 'Calender',
                    icon: Icon(Icons.calendar_month),
                    ),
                
                BottomNavigationBarItem(
                    label: 'Notification',
                    icon: Icon(Icons.notifications_active)
                ),
                BottomNavigationBarItem(
                    label: 'More',
                    icon: Icon(Icons.more_horiz)
                ),
              ],
            ) ,
      ),
    );
  }
}