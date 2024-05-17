import 'package:animate_do/animate_do.dart';
import 'package:animated_login_v1/pages/aboutus.dart';
import 'package:animated_login_v1/pages/login.dart';
import 'package:animated_login_v1/pages/trialboxes.dart';
import 'package:animated_login_v1/widgets/custom_painter.dart';
import 'package:animated_login_v1/widgets/whysamantha_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

const List<String> _list = [
  'Login',
  'Pricing',
];

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    _colorAnimation = TweenSequence<Color?>(
      <TweenSequenceItem<Color?>>[
        TweenSequenceItem(
          tween: ColorTween(begin: Color(0xffe8cdce), end: Color(0xffdf8182)),
          weight: 1,
        ),
        TweenSequenceItem(
          tween: ColorTween(begin: Color(0xffdf8182), end: Color(0xffe8cdce)),
          weight: 1,
        ),
      ],
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Set the scaffold key
      appBar: AppBar(
        title: SvgPicture.asset("assets/images/samlogo.svg"),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Open the drawer when the menu icon is pressed
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: Column(
          //padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 150, // Adjust the height as needed
              child: CustomPaint(
                painter: DrawerHeaderPainter(_colorAnimation),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                    child: SvgPicture.asset("assets/images/samlogo.svg",
                        height: 50, width: 50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                'Why Samantha?',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
                // Navigate to "Why Samantha?" page
              },
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 20.0, left: 15.0, right: 15),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 50),
                      backgroundColor: Color(0xFF7b566e),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: BackgroundPainter(),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                //color: Colors.white,
                child: Column(
                  children: [
                    FadeInDown(
                      delay: const Duration(milliseconds: 800),
                      duration: const Duration(milliseconds: 800),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/samantha.jpeg',
                              width: 100.w,
                              height: 50.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // decoration: BoxDecoration(color: Colors.white),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 1.6.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeInUp(
                                  delay: const Duration(milliseconds: 700),
                                  duration: const Duration(milliseconds: 800),
                                  child: Text(
                                    'Your First Approach to Mental-Wellbeing',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 25.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                FadeInUp(
                                  delay: const Duration(milliseconds: 900),
                                  duration: const Duration(milliseconds: 1000),
                                  child: Text(
                                    'Are you feeling down, anxious, or depressed? Or perhaps you need a friendly ear? You\'ve come to the right place. It\'s as simple and comforting like talking with your friend.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          WhySamanthaButton(),
                          SizedBox(
                            height: 2.h,
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 1000),
                            duration: const Duration(milliseconds: 1100),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPage(),
                                        ),
                                      );
                                    },
                                    child: FadeInUp(
                                      delay: const Duration(milliseconds: 1100),
                                      duration:
                                          const Duration(milliseconds: 1200),
                                      child: Text(
                                        'Express Yourself',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Satoshi',
                                      ),
                                      backgroundColor: Color(0xFF7b566e),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          FadeInUp(
                            delay: const Duration(milliseconds: 1100),
                            duration: const Duration(milliseconds: 1200),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 138, 137, 137),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TrialBoxes(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Register',
                                    style: TextStyle(
                                      color: Color(0xFF7b566e),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffe9cdce),
        Colors.white,
      ], // Gradient colors
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.3,
        size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.4, size.width, size.height * 0.38);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
