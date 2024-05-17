import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrialBoxes extends StatefulWidget {
  const TrialBoxes({super.key});

  @override
  State<TrialBoxes> createState() => _TrialBoxesState();
}

class _TrialBoxesState extends State<TrialBoxes>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isRotating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _isRotating = false;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (!_isRotating) {
      _controller.forward();
      _isRotating = true;
    }
  }

  void _handleOutsideTap() {
    if (_isRotating) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleOutsideTap,
      child: Scaffold(
        body: SafeArea(
          child: GestureDetector(
            onTap: _handleTap,
            child: Column(
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    color: Color(0xFFfeeedc),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: -25,
                        right: -50,
                        child: AnimatedBuilder(
                          animation: _controller,
                          builder: (context, child) {
                            return Transform.translate(
                              offset: Offset(
                                _controller.value * 50.0,
                                0.0,
                              ),
                              child: Transform.rotate(
                                angle: _controller.value *
                                    0.5 *
                                    3.14 /
                                    3, // Rotate by 30 degrees
                                child: SvgPicture.asset(
                                  'assets/images/spiralimage.svg',
                                  width: 150.0,
                                  height: 150.0,
                                  color: Color(0xffeacca7),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      AnimatedBuilder(
                        animation: _controller,
                        builder: (context, child) {
                          return Positioned(
                            bottom: (_controller.value * 10),
                            child: Opacity(
                              opacity: _controller.value,
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                //color: Colors.red,
                                width: 330,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Anxiety',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Color(0xffa88662),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Offering relaxation techniques, guiding mindfulness, suggesting coping strategies, and offering a listening ear anytime with ",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Color(0xffa88662),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Samantha',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 18.0,
                                            color: Color(0xffa88662),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(width: 10.0),
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
