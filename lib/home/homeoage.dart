import 'dart:ui';

import 'package:beta_instagram/home/sherBottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
 

class Homeoage extends StatelessWidget {
  const Homeoage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1F2E),
        title: Container(
          height: 40,
          width: 128,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 18),
            height: 24,
            width: 24,
            child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.transparent,
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: DraggableScrollableSheet(
                            initialChildSize: 0.4,
                            maxChildSize: 0.7,
                            minChildSize: 0.3,
                            builder: (context, scrollController) {
                              return Sherbottomsheet(control: scrollController);
                            },
                          ),
                        );
                      });
                },
                child: Image.asset('images/icon_direct.png')),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: _getstorii(),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getmetodPost();
                },
                childCount: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


Widget _getmetodPost() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
    child: Container(
      width: 395,
      height: 510,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // alignment: Alignment.topCenter,
        children: [
          _geticonpost(),
          _getpostali(),
        ],
      ),
    ),
  );
}

Widget _getpostali() {
  return Container(
    height: 440,
    width: 394,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('images/post_cover.png'),
          ),
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Image.asset('images/icon_video.png'),
        ),
        Positioned(
          bottom: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
              child: Container(
                width: 340,
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 255, 255, 0.2),
                      ]),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('images/icon_hart.png'),
                          SizedBox(width: 6),
                          Text(
                            '2.6k',
                            style: TextStyle(
                                fontFamily: 'Gb',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ]),
                        Row(children: [
                          Image.asset('images/icon_comments.png'),
                          SizedBox(width: 6),
                          Text(
                            '1.5k',
                            style: TextStyle(
                                fontFamily: 'Gb',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ]),
                        Image.asset('images/icon_share.png'),
                        Image.asset('images/icon_save.png'),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _geticonpost() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Row(children: [
      _getbox(),
      Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'amirahmadbarnamenvis',
                style: TextStyle(
                    fontFamily: 'Gb', color: Colors.white, fontSize: 16),
              ),
              Text(
                'برنامه نویس موبایل و بهاممان فلان ',
                style: TextStyle(
                    fontFamily: 'SM', color: Colors.white, fontSize: 16),
              ),
            ]),
      ),
      Spacer(),
      Image.asset(
        'images/icon_menu.png',
      ),
    ]),
  );
}

Widget _getbox() {
  return DottedBorder(
    borderType: BorderType.RRect,
    radius: Radius.circular(17),
    padding: EdgeInsets.all(4),
    color: Colors.white,
    dashPattern: [40, 10],
    strokeWidth: 2,
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      child: Container(
        height: 38,
        width: 38,
        child: Image.asset('images/profile.png'),
      ),
    ),
  );
}

Widget _getStoribox() {
  return Container(
    height: 88,
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    child: Column(
      children: [
        DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(17),
          padding: EdgeInsets.all(4),
          color: Color(0xffF98BFC),
          dashPattern: [40, 0],
          strokeWidth: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            child: Container(
              height: 58,
              width: 58,
              child: Image.asset('images/profile.png'),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Test',
          style: TextStyle(color: Colors.white, fontFamily: 'GS'),
        ),
      ],
    ),
  );
}

Widget _getstorii() {
  return Container(
    height: 143,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return index == 0 ? _getastori() : _getStoribox();
      },
    ),
  );
}

Widget _getastori() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF98BFC),
            borderRadius: BorderRadius.circular(17),
          ),
          height: 64,
          width: 64,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xff1C1F2E),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'images/icon_plus.png',
                width: 26,
                height: 26,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Your Story',
          style: TextStyle(color: Colors.white, fontFamily: 'GS'),
        ),
      ],
    ),
  );
}




















//  ElevatedButton(
//               onPressed: () {
//                 showModalBottomSheet(
//                     backgroundColor: Colors.transparent,
//                     barrierColor: Colors.transparent,
//                     context: context,
//                     isScrollControlled: true,
//                     builder: (BuildContext context) {
//                       return DraggableScrollableSheet(
//                         initialChildSize: 0.4,
//                         maxChildSize: 0.7,
//                         minChildSize: 0.3,
//                         builder: (context, scrollController) {
//                           return Sherbottomsheet(control: scrollController);
//                         },
//                       );
//                     });
//               },
//               child: Text('data'),
//             ),
//             Container(
//               height: 143,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return index == 0 ? _getastori() : _getStoribox();
//                 },
//               ),
//             ),
//             _getWigtList(),