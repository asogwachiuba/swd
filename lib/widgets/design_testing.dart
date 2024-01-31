import 'package:flutter/material.dart';
import 'dart:math';

import 'package:swd/utils/swd_colors.dart';

class DesignTest extends StatelessWidget {
  const DesignTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
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
                        stops: [0.2, 0.8],
                        center: Alignment(-0.9, -0.35),
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
                        stops: [0.2, 1.0],
                        center: Alignment(-0.99, -1.2),
                        radius: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
