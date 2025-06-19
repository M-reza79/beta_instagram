import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ttt extends StatefulWidget {
  const ttt({super.key});

  @override
  State<ttt> createState() => _tttState();
}

class _tttState extends State<ttt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(color: Colors.green);
              },
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
          ),
        ],
      )),
    );
  }
}

Widget _getpost() {
  return CustomScrollView(
    slivers: [
      SliverToBoxAdapter(child: _getheder()),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(top: 1, right: 16, left: 16, bottom: 5),
          child: Container(
            width: double.infinity,
            height: 375,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  'images/item0.png',
                ),
              ),
            ),
          ),
        ),
      ),
      SliverPadding(
        padding: EdgeInsets.only(bottom: 100, right: 16, left: 16),
        sliver: SliverGrid(
          gridDelegate: SliverQuiltedGridDelegate(
            //تعداد بخش هایی که صفحه رو تقسیم کردیم
            crossAxisCount: 3,
            //این که چی جور هر بچه رو بسازه
            //با توجه به سهمی که هر بچجه میگیره
            pattern: [
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
            //الکوی تکرار  ، چون به صورت پترن میچینه تکرای یعنی
            //inverted یعنی برعکس
            //same تکرار معمولی
            //mirroredd اینه ای
            repeatPattern: QuiltedGridRepeatPattern.same,

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
  );
}

Widget _getheder() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 27),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Post',
          style: TextStyle(fontFamily: 'GB', fontSize: 20, color: Colors.white),
        ),
        SizedBox(width: 15),
        Image.asset('images/icon_arrow_down.png'),
        Spacer(),
        Text(
          'Next',
          style: TextStyle(fontFamily: 'GB', fontSize: 20, color: Colors.white),
        ),
        SizedBox(width: 15),
        Image.asset('images/icon_arrow_right_box.png'),
      ],
    ),
  );
}
