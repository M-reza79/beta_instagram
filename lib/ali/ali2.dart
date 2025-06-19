import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
      animationDuration: Duration.zero,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // تعداد تب‌ها
      child: Scaffold(
        backgroundColor: Color(0xff00B2B2),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/bg_app.png'),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 32.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/name_app.png'),
                    Image.asset('assets/icons/icon_app.png'),
                  ],
                ),
                SizedBox(height: 24.0),
                Text(
                  'به گلدیوم خوش آمدید!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 16.0),
                TabBar(
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white60,
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  splashFactory: NoSplash.splashFactory,
                  indicatorColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: CustomTabIndicator(tabController: tabController),
                  dividerColor: Colors.transparent,
                  tabs: [Tab(text: 'ثبت نام'), Tab(text: 'ورود')],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    physics:
                        NeverScrollableScrollPhysics(), // این ویژگی برای غیرفعال کردن اسلاید کردن است
                    children: [RegisterPage(), LoginPage()],
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

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amber,
                    width: double.infinity,
                    height: 30,
                    child: Text('$index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Text('Login')),
    );
  }
}

class CustomTabIndicator extends Decoration {
  final TabController tabController;
  const CustomTabIndicator({required this.tabController});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(tabController);
  }
}

class _CustomPainter extends BoxPainter {
  final TabController tabController;

  _CustomPainter(this.tabController);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Color indicatorColor = Colors.white;

    final Paint paint =
        Paint()
          ..color = indicatorColor
          ..style = PaintingStyle.fill;

    final double x = offset.dx;
    final double y = offset.dy + configuration.size!.height;
    final double width = configuration.size!.width;
    final double height = 38; // ارتفاع ایندیکاتور
    if (tabController.index == 0) {
      final Path path =
          Path()
            ..moveTo(x - 15, y) // شروع از پایین-چپ
            ..lineTo(x + 15, y - height) // ایجاد برش اریب در سمت چپ
            ..lineTo(x + width, y - height) // ادامه تا راست بالا
            ..lineTo(x + width, y) // حرکت به سمت پایین راست
            ..quadraticBezierTo(
              x + width + 5,
              y - (height / 2),
              x + width,
              y,
            ) // ایجاد گوشه گرد سمت راست
            ..close();
      canvas.drawPath(path, paint);
    } else {
      final Path path =
          Path()
            ..moveTo(x + width + 15, y) // شروع از پایین-راست
            ..lineTo(x + width - 15, y - height) // ایجاد برش اریب در سمت راست
            ..lineTo(x, y - height) // ادامه تا چپ بالا
            ..lineTo(x, y) // حرکت به سمت پایین چپ
            ..quadraticBezierTo(
              x - 5,
              y - (height / 2),
              x,
              y,
            ) // ایجاد گوشه گرد سمت چپ
            ..close();
      canvas.drawPath(path, paint);
    }
  }
}