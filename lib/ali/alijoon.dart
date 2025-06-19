// import 'package:flutter/material.dart';

// class AuthScreen extends StatelessWidget {
//   const AuthScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2, // تعداد تب‌ها
//       child: Scaffold(
//         backgroundColor: Color(0xff00B2B2),
//         body: Directionality(
//           textDirection: TextDirection.rtl,
//           child: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 repeat: ImageRepeat.repeat,
//                 fit: BoxFit.cover,
//                 image: AssetImage('images/mood.png'),
//               ),
//             ),
//             child: Column(
//               children: [
//                 SizedBox(height: 32.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset('images/mood.png'),
//                   ],
//                 ),
//                 SizedBox(height: 24.0),
//                 Text(
//                   'به گلدیوم خوش آمدید!',
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//                 SizedBox(height: 16.0),
//                 ClipPath(
                  
//                   child: TabBar(
//                     labelColor: Colors.black,
//                     unselectedLabelColor: Colors.white60,
//                     overlayColor: WidgetStatePropertyAll(Colors.transparent),
//                     splashFactory: NoSplash.splashFactory,
//                     indicatorColor: Colors.transparent,
//                     indicatorSize: TabBarIndicatorSize.tab,
//                     indicator: BoxDecoration(color: Colors.white),
//                     dividerColor: Colors.transparent,
//                     tabs: [
//                       Tab(text: 'ثبت نام'),
//                       Tab(text: 'ورود')
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: TabBarView(children: [RegisterPage(), LoginPage()]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(child: Text('register')),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(child: Text('Login')),
//     );
//   }
// }
