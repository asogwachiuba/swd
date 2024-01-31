import 'package:flutter/material.dart';
import 'dart:math';

import 'package:swd/utils/swd_colors.dart';

class SWDCustomView extends StatelessWidget {
  const SWDCustomView({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF141414), Color(0xFF141414)],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Transform.rotate(
                angle: pi / 2,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        SWDColors.redWine.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      stops: const [0.2, 0.8],
                      center: const Alignment(-0.9, -0.35),
                      radius: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Transform.rotate(
                angle: pi / 2,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.transparent,
                      ],
                      stops: const [0.2, 1.0],
                      center: const Alignment(-0.99, -1.2),
                      radius: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
