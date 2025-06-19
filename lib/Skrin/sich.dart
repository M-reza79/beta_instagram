import 'dart:ui';

import 'package:flutter/material.dart';


class Sich extends StatelessWidget {
  const Sich({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          SizedBox(width: double.infinity),
          Expanded(
            child: Stack(alignment: Alignment.center, children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/switch_account_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 225,
                child: ClipRRect(
                  child: BackdropFilter(
                    
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: 320,
                      height: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2)
                            ]),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Image.asset('images/profile.png'),
                          SizedBox(height: 20),
                          Text(
                            'Amirahmadadibii',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 129,
                            height: 46,
                            child: ElevatedButton(
                              style:
                                  Theme.of(context).elevatedButtonTheme.style,
                              onPressed: () {},
                              child: Text('Confirm'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'switch account',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 145,
              bottom: 50,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Don\'t have an account? / ',
                style: TextStyle(
                    fontFamily: 'GB', color: Colors.grey[700], fontSize: 16),
              ),
              Text(
                ' Sign up',
                style: TextStyle(
                    color: Colors.white, fontSize: 16, fontFamily: 'GB'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
