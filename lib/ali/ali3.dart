// import 'package:flutter/material.dart';

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({super.key});

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 2, vsync: this);
//     // tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     tabController.dispose();
//     super.dispose();
//   }

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
//                   children: [],
//                 ),
//                 SizedBox(height: 24.0),
//                 Text(
//                   'به گلدیوم خوش آمدید!',
//                   style: TextStyle(color: Colors.white, fontSize: 18),
//                 ),
//                 SizedBox(height: 16.0),
//                 Stack(
//                   children: [
//                     ClipPath(
//                       clipper: TabClipper(),
//                       child: Container(
//                         height: 48,
//                         color: const Color.fromARGB(255, 119, 83, 83),
//                       ),
//                     ),
//                     TabBar(
//                       controller: tabController,
//                       unselectedLabelColor: Colors.white,
//                       overlayColor: WidgetStatePropertyAll(Colors.transparent),
//                       splashFactory: NoSplash.splashFactory,
//                       indicatorColor: Colors.transparent,
//                       indicator: BoxDecoration(),
//                       dividerColor: Colors.transparent,
//                       tabs: [
//                         Tab(text: 'ورود'),
//                         Tab(text: 'ثبت نام'),
//                       ],
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: TabBarView(
//                       controller: tabController,
//                       children: [RegisterPage(), LoginPage()]),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // class TabClipper extends CustomClipper<Path> {
// //   @override
// //   Path getClip(Size size) {
// //     Path path = Path();
// //     path.moveTo(0, 0);
// //     path.lineTo(size.width, 0);
// //     path.lineTo(size.width * 0.5, size.height);
// //     path.lineTo(0, size.height);
// //     path.close();
// //     return path;
// //   }

// //   @override
// //   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// // }

// class TabClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width * 0.5, 0);
//     path.lineTo(size.width * 0.55, size.height);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(child: Text('ثبت نام')),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(child: Text('ورود')),
//     );
//   }
// }
