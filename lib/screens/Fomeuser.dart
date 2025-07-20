import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Fomeuser extends StatefulWidget {
  const Fomeuser({super.key});

  @override
  State<Fomeuser> createState() => _FomeuserState();
}

class _FomeuserState extends State<Fomeuser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1f2e),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  // pinned: true,
                  actions: [Icon(Icons.menu, color: Colors.white)],
                  toolbarHeight: 50,
                  backgroundColor: Color(0xff1c1f2e),
                  expandedHeight: 170,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/item1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(10),
                      child: Container(
                        height: 14,
                        decoration: BoxDecoration(
                          color: Color(0xff1c1f2e),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      )),
                ),
                SliverToBoxAdapter(
                  child: _getprofil(),
                ),
                SliverToBoxAdapter(
                  child: _gettozihat(),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              //برای گردی  اون خط باتن از این استفاده می کنیم
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              foregroundColor: Colors.white,
                              side: BorderSide(style: BorderStyle.none

                                  // ),
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'Message',
                              style: TextStyle(
                                fontFamily: 'GB',
                                fontSize: 16,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              //برای گردی  اون خط باتن از این استفاده می کنیم
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              foregroundColor: Colors.white,
                              side: BorderSide(
                                color: Colors.white,
                                width: 2,

                                // ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getstorii(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                SliverPersistentHeader(
                  floating: true,
                  pinned: true,
                  delegate: TbarSliver(
                    TabBar(
                      labelColor: Colors.white,
                      indicatorWeight: 2,
                      indicatorColor: Color(0xffF35383),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorPadding: EdgeInsets.only(bottom: 1),
                      tabs: [
                        Tab(
                          // text: 'Posts',
                          icon: Image.asset('images/icon_tab_posts.png'),
                        ),
                        Tab(
                          // text: 'Posts',
                          icon: Image.asset('images/icon_tab_bookmark.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              // controller: TabController(length: 2, vsync: ScrollableState()),
              children: [
                _getgsmt1(),
                _getgsmt1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _getgsmt1() {
  return CustomScrollView(
    slivers: [
      SliverPadding(
        padding: EdgeInsets.only(bottom: 50, right: 16, left: 16, top: 20),
        sliver: SliverGrid(
          gridDelegate: SliverQuiltedGridDelegate(
            //تعداد بخش هایی که صفحه رو تقسیم کردیم
            crossAxisCount: 3,
            //این که چی جور هر بچه رو بسازه
            //با توجه به سهمی که هر بچجه میگیره
            pattern: [
              //باس به تریتب شروع شدن حواست باشه چون ممکنه وقتی بهت ارور بده که فضای نداشته باشه
              //مثلا یه  جای 2 تایی گرفتی بعدی باز 1 جا می خوای ازش ارور میده چون دو ستونه
              //از چب به راست و از بالا به پایین
              QuiltedGridTile(1, 1),
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
  );
}

Widget _getprofil() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18),
    child: Row(children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffF35383),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(17),
        ),
        height: 70,
        width: 70,
        child: Padding(
          padding: EdgeInsets.all(3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                'images/profile.png',
              ),
            ),
          ),
        ),
      ),
      SizedBox(width: 15),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'امیراحمد برنامه‌نویس موبایل',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'SM',
              ),
            ),
            Text(
              'amirahmadadibii',
              style: TextStyle(
                  color: Color(0xffC5C5C5), fontSize: 12, fontFamily: 'GM'),
            ),
          ]),
      Spacer(),
      Padding(
        padding: EdgeInsets.only(bottom: 35),
        child: Image.asset('images/icon_po.png'),
      ),
    ]),
  );
}

Widget _gettozihat() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 64,
          width: 195,
          child: Text(
            'برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین دوره مـکتـبـخونـه و بـرنـامـه نـویـس سـابـق زریـن پـال تـخـصـص بـرنـامـه‌نـویسی یعنی اینده و تاثیر گذاری آموزش رایگان 👇',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'SM',
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Image.asset('images/icon_link.png'),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                // Add your link handling logic here
              },
              child: Text(
                'yek.link/Amirahmad',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Image.asset('images/icon_ktab.png'),
            SizedBox(width: 5),
            Text(
              'developer',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'GB', fontSize: 16),
            ),
            SizedBox(width: 15),
            Image.asset('images/icon_map.png'),
            SizedBox(width: 5),
            Text(
              'IRAN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GM',
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '23',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Posts',
              style: TextStyle(
                color: Color(0xffC5C5C5),
                fontSize: 16,
                fontFamily: 'GM',
              ),
            ),
            SizedBox(width: 15),
            Text(
              '16.2k',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Followers',
              style: TextStyle(
                color: Color(0xffC5C5C5),
                fontSize: 16,
                fontFamily: 'GM',
              ),
            ),
            SizedBox(width: 15),
            Text(
              '280',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'GB',
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Following',
              style: TextStyle(
                color: Color(0xffC5C5C5),
                fontSize: 16,
                fontFamily: 'GM',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class TbarSliver extends SliverPersistentHeaderDelegate {
  TbarSliver(this._tabBar);
  //این متد برای ساختن تب بار است

  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    //جای که بایید سا خت
    return Container(
      color: Color(0xff1c1f2e),
      child: _tabBar,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}

Widget _getstorii() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Container(
      height: 106,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return index == 0 ? _getastori() : _getStoribox();
        },
      ),
    ),
  );
}

Widget _getStoribox() {
  return Container(
    height: 86,
    width: 60,
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Container(
          height: 60,
          width: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/profile.png'),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Test',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GB',
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget _getastori() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
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
          'New',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GS',
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
