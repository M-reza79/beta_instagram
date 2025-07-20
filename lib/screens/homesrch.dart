import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Homesrch extends StatelessWidget {
  const Homesrch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _getblahom()),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 50, right: 16, left: 16),
              sliver: SliverGrid(
                gridDelegate: SliverQuiltedGridDelegate(
                  //تعداد بخش هایی که صفحه رو تقسیم کردیم
                  crossAxisCount: 3,
                  //این که چی جور هر بچه رو بسازه
                  //با توجه به سهمی که هر بچجه میگیره
                  pattern: [
                    QuiltedGridTile(2, 1),
                    QuiltedGridTile(2, 2),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                    QuiltedGridTile(1, 1),
                  ],
                  //الکوی تکرار  ، چون به صورت پترن میچینه تکرای یعنی
                  //inverted یعنی برعکس
                  //same تکرار معمولی
                  //mirroredd اینه ای
                  repeatPattern: QuiltedGridRepeatPattern.inverted,

                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),

                //واسه ساخت بچه
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        'images/item$index.png',
                      ),
                    ),
                  );
                }, childCount: 10),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getblahom() {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(left: 18, right: 18, top: 20),
        height: 46,
        width: 394,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              fillColor: Color(0xff272B40),
              filled: true,
              hintText: 'Search',
              hintStyle: TextStyle(
                fontFamily: 'GB',
                fontSize: 14,
                color: Colors.white,
              ),
              //بگو اینو که برای این که ایکون داخل تکس فیلد باش باید از این استفاه ده کنیم
              //prefixIcon
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Image.asset(
                  'images/icon_search_navigation_active.png',
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset('images/icon_scan.png',
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 9),
        child: _getSotryList(),
      )
    ]);
  }

  Widget _getSotryList() {
    return Container(
      height: 23,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Color(0xff272B40),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
                child: Text(
                  'amirahmad $index',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'GM',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Widget _getpostSehrch() {
//   return GridView.custom(
//     //واسه ساخت بچه ها
//     gridDelegate: SliverQuiltedGridDelegate(
//       //تعداد بخش هایی که صفحه رو تقسیم کردیم
//       crossAxisCount: 3,
//       //این که چی جور هر بچه رو بسازه
//       //با توجه به سهمی که هر بچجه میگیره
//       pattern: [
//         QuiltedGridTile(2, 1),
//         QuiltedGridTile(2, 2),
//         QuiltedGridTile(1, 1),
//         QuiltedGridTile(1, 1),
//         QuiltedGridTile(1, 1),
//       ],
//       //الکوی تکرار  ، چون به صورت پترن میچینه تکرای یعنی
//       //inverted یعنی برعکس
//       //same تکرار معمولی
//       //mirroredd اینه ای
//       repeatPattern: QuiltedGridRepeatPattern.inverted,

//       mainAxisSpacing: 8,
//       crossAxisSpacing: 8,
//     ),

//     //واسه ساخت بچه
//     childrenDelegate: SliverChildBuilderDelegate((context, index) {
//       return ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         child: FittedBox(
//           fit: BoxFit.cover,
//           child: Image.asset(
//             'images/item$index.png',
//           ),
//         ),
//       );
//     }, childCount: 10),
//   );
// }
