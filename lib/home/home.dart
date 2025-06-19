import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/pattern1.png'),
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: Image.asset('images/logo_splash.png'),
                  ),
                ),
                Positioned(
                  bottom: 32,
                  child: Column(
                    children: [
                      Text(
                        "from",
                        style:
                            TextStyle(color: Color.fromARGB(255, 77, 76, 75)),
                      ),
                      Text(
                        "Fluteramirahmad",
                        style:
                            TextStyle(color: Color.fromARGB(255, 7, 114, 255)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
