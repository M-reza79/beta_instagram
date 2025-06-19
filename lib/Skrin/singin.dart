import 'package:flutter/material.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    _focusNode2.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff323A99),
              Color(0xffF98BFC),
            ]),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _buildText(),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: 75,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'images/rocket.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Sign in to ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'GB',
                      ),
                    ),
                    Image.asset('images/mood.png'),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: _focusNode1,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GM', fontSize: 15),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),

                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffC5C5C5), width: 3),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffF35383), width: 3),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      focusColor: Color(0xffF35383),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: _focusNode1.hasFocus
                              ? Color(0xffF35383)
                              : Color(0xffC5C5C5),
                          fontFamily: 'GM'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 44),
                  child: TextField(
                    focusNode: _focusNode2,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'GM', fontSize: 15),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Color(0xffF35383), width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Color(0xffC5C5C5), width: 3),
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: _focusNode2.hasFocus
                              ? Color(0xffF35383)
                              : Color(0xffC5C5C5),
                          fontFamily: 'GM'),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('sign in'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    bottom: 50,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account? / ',
                          style: TextStyle(
                              fontFamily: 'GB',
                              color: Colors.grey[700],
                              fontSize: 16),
                        ),
                        Text(
                          ' Sign up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'GB'),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }
}
