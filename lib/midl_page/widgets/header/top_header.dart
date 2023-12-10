import 'dart:math';

import 'package:dashboard_fauvette_killian/constants.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'logo.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        const SizedBox(width: 75),

        const LogoTxtImage(),

        Row(
          children: [
            InkWell(
              customBorder: const CircleBorder(),
              onTap: () {},
              child: Transform.rotate(
                angle: pi/2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: GradientBoxBorder(
                        width: 2,
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: <Color>[
                              colorBlue,
                              colorGreen,
                            ],
                        )
                    )
                  ),
                  child: Icon(
                      Icons.tune_rounded,
                      color: colorBlue,
                  ),
                ),
              ),
            ),

            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_rounded,
                  color: Color(0XFF3573ac),
                )
            )
          ],
        ),
      ],
    );
  }
}
