import 'package:beta_instagram/falit/homeActiviti.dart';
import 'package:beta_instagram/home/homeoage.dart';
import 'package:beta_instagram/homeFolo/Fomeuser.dart';
import 'package:beta_instagram/homesrch/homesrch.dart';
import 'package:beta_instagram/post/post.dart';
import 'package:flutter/material.dart';
 

class Manskrin extends StatefulWidget {
  const Manskrin({super.key});

  @override
  State<Manskrin> createState() => _ManskrinState();
}

class _ManskrinState extends State<Manskrin> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 27, 31, 49),
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_home.png', color: Colors.white),
              activeIcon:
                  Image.asset('images/icon_home.png', color: Color(0xffF35383)),
              label: 'Home1',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_search_navigation.png',
                  color: Colors.white),
              activeIcon: Image.asset('images/icon_search_navigation.png',
                  color: Color(0xffF35383)),
              label: 'Home2',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_add_navigation.png',
                  color: Colors.white),
              activeIcon: Image.asset('images/icon_add_navigation.png',
                  color: Color(0xffF35383)),
              label: 'Home3',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/icon_activity_navigation.png',
                  color: Colors.white),
              activeIcon: Image.asset('images/icon_activity_navigation.png',
                  color: Color(0xffF35383)),
              label: 'Home4',
            ),
            BottomNavigationBarItem(
              icon: _getprofil(_selectedIndex),
              label: 'Home5',
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        //اگه یه ارایه بدیم نیاز به [  ] نیست
        children: getLayot(),
      ),
    );
  }
}

List<Widget> getLayot() {
  return <Widget>[
    Homeoage(),
    Homesrch(),
    Post(),
    Homeactiviti(),
    Fomeuser(),
  ];
}

Widget _getprofil(_selectedIndex) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        color: _selectedIndex == 4 ? Color(0xffF35383) : Colors.white,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    height: 30,
    width: 30,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          'images/profile.png',
        ),
      ),
    ),
  );
}
