import 'package:beta_instagram/model/enums/ativitienum.dart';
import 'package:flutter/material.dart';
 
class Homeactiviti extends StatefulWidget {
  const Homeactiviti({super.key});

  @override
  State<Homeactiviti> createState() => _HomeactivitiState();
}

class _HomeactivitiState extends State<Homeactiviti>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 80,
            color: Color(0xff1C1F2E),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontFamily: 'Gb', fontSize: 18),
              indicatorWeight: 3,
              indicatorColor: Color(0xffF35383),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              // unselectedLabelColor: Colors.grey,
              // indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _getpostActiv1(),
                _getpostActiv2(),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget _getpostActiv1() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(ActvitiStatus.following);
            },
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'New',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(ActvitiStatus.likis);
            },
            childCount: 4,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'This Week',
              style: TextStyle(
                fontFamily: 'GB',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return _getRow(ActvitiStatus.follobak);
            },
            childCount: 4,
          ),
        ),
      ],
    );
  }

  Widget _getpostActiv2() {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Text(
                'data',
                style: TextStyle(color: Colors.white),
              );
            },
            childCount: 100,
          ),
        ),
      ],
    );
  }

  Widget _getRow(ActvitiStatus status) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
      child: Row(
        children: [
          Container(
            // margin: EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 6,
            width: 6,
            decoration:
                BoxDecoration(color: Color(0xffF35383), shape: BoxShape.circle),
          ),
          SizedBox(width: 7),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                'images/profile.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'amirahmadadibii',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Started following',
                    style: TextStyle(
                      fontFamily: 'GM',
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'you',
                    style: TextStyle(
                      fontFamily: 'GM',
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '3min',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 10,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          _getActivRow(status),
        ],
      ),
    );
  }

  Widget _getActivRow(ActvitiStatus status) {
    switch (status) {
      case ActvitiStatus.follobak:
        return ElevatedButton(
          onPressed: () {},
          child: Text(
            'Follow',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
            ),
          ),
          style: OutlinedButton.styleFrom(
            //برای گردی  اون خط باتن از این استفاده می کنیم
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)),
            foregroundColor: Colors.white,
            side: BorderSide(style: BorderStyle.none

                // ),
                ),
          ),
        );
      //وقتی ریتن بزاری دیگه بک نمی خواد بزاری چون  همون کارو می کنه و خارج میشه
      case ActvitiStatus.likis:
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 40,
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                'images/item2.png',
              ),
            ),
          ),
        );
      case ActvitiStatus.following:
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
            ),
          ),
          style: OutlinedButton.styleFrom(
            //برای گردی  اون خط باتن از این استفاده می کنیم
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            foregroundColor: Color(0xffC5C5C5),
            side: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,

              // ),
            ),
          ),
        );

      default:
        //وقتی ریتین بزاری یعنی صدد صد یه چیزی میرسه و نال نیست  جنس ویجت
        return OutlinedButton(
          onPressed: () {},
          child: Text(
            'Message',
            style: TextStyle(
              fontFamily: 'GB',
              fontSize: 12,
            ),
          ),
          style: OutlinedButton.styleFrom(
            //برای گردی  اون خط باتن از این استفاده می کنیم
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            foregroundColor: Color(0xffC5C5C5),
            side: BorderSide(
              color: Color(0xffC5C5C5),
              width: 2,

              // ),
            ),
          ),
        );
    }
  }
}
