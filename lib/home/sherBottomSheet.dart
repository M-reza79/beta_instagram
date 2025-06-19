import 'dart:ui';

import 'package:flutter/material.dart';

class Sherbottomsheet extends StatelessWidget {
  const Sherbottomsheet({this.control, super.key});
  final ScrollController? control;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: _getGridView(context),
        ),
      ),
    );
  }

  Widget _getGridView(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CustomScrollView(
          controller: control,
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 22),
                    width: 67,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset('images/icon_share_bottomsheet.png')
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 32),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13), // Image border
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          fillColor: Color.fromRGBO(255, 255, 255, 0.4),
                          filled: true,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontFamily: 'GB',
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          //بگو اینو که برای این که ایکون داخل تکس فیلد باش باید از این استفاه ده کنیم
                          //prefixIcon
                          prefixIcon: Image.asset(
                            'images/icon_search_navigation_active.png',
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    child: _getgridvio(),
                  );
                },
                childCount: 95,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 110),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 100)),
          ],
        ),
        Positioned(
          bottom: 47,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
              child: Text(
                'Send',
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontFamily: 'GB'),
              ),
            ),
          ),
        )
      ],
    );
  }
}

//  GridView.builder(
//       controller: control,
//       itemCount: 100,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//       ),
//       itemBuilder: (BuildContext context, int index) {
//         return Container(
//           color: Colors.green,
//         );
//       },
//     );

Widget _getgridvio() {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('images/profile.png'),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        'amirahmadadibi',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'GB',
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    ],
  );
}
