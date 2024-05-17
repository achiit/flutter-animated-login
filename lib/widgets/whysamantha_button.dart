import 'package:animated_login_v1/config/customtext.dart';
import 'package:animated_login_v1/pages/aboutus.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WhySamanthaButton extends StatefulWidget {
  const WhySamanthaButton({
    Key? key,
  }) : super(key: key);

  @override
  _WhySamanthaButtonState createState() => _WhySamanthaButtonState();
}

class _WhySamanthaButtonState extends State<WhySamanthaButton> {
  double _buttonWidth1 = 190;
  double originalWidth = 190;
  double _buttonHeight1 = 40;
  double _buttonWidth2 = double.infinity - 10;
  double _buttonHeight2 = 50;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      width: _buttonWidth2,
      height: _buttonHeight2,
      curve: Curves.easeInOut,
      child: InkWell(
        onTap: () {
          _buttonWidth1 <= originalWidth
              ? increaseSize()
              : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()));
          ;
        },
        // style: ElevatedButton.styleFrom(
        //   fixedSize: Size(double.infinity, 60),
        //   backgroundColor: Color(0xfff6e7e8),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(30),
        //   ),
        // ),
        // onPressed: () {
        //   _buttonWidth1 <= originalWidth
        //       ? increaseSize()
        //       : Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => AboutUsPage()));
        //   ;
        // },
        child: Ink(
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xfff6e7e8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    width: _buttonWidth1,
                    height: _buttonHeight1,
                    curve: Curves.easeInOut,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(190, 40),
                          backgroundColor: Color(0xffe9cdce),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0),
                      onPressed: () {
                        _buttonWidth1 <= originalWidth
                            ? increaseSize()
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUsPage()));
                        ;
                      },
                      child: Text(
                        "Why Samantha?",
                        textScaler: TextScaler.linear(
                            ScaleSize.textScaleFactor(context)),
                        style: TextStyle(
                          color: Color(0xff7a576e),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Explore Here",
                  textScaler:
                      TextScaler.linear(ScaleSize.textScaleFactor(context)),
                  style: TextStyle(
                    color: Color(0xff7a576e),
                    // fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void increaseSize() {
    setState(() {
      _buttonWidth1 += 10;
      // _buttonHeight1 += 10;
      _buttonWidth2 += 10;
      // _buttonHeight2 += 10;
    });
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to next route here
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AboutUsPage()));
    });
  }
}
