import 'dart:math';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class CenterAvatar extends StatelessWidget {

  final ImageProvider<Object>? image;

  const CenterAvatar({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.25,
            backgroundImage: image,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Transform.rotate(

              angle: pi,
              child: CircularProgressIndicator(
                value: 1/3, // Represents one third completion
                strokeWidth: 8,
                strokeCap: StrokeCap.round,
                valueColor: AlwaysStoppedAnimation<Color>(colorBlue),
                backgroundColor: Colors.grey[200],
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[
                      colorGreen,
                      colorBlue,
                    ],
                ),

                boxShadow: const [
                  BoxShadow(
                    color: Color(0x50000000),
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                    spreadRadius: -2.0,
                  )
                ],

                borderRadius: BorderRadius.circular(100),
              ),

              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Text(
                    "Complété à 100%".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ArialRounded',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        Positioned(
            top: 15,
            right: 15,
            child: Stack(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10.0),
                      elevation: 10,
                      backgroundColor: const Color(0xFDF9FDFF),
                      surfaceTintColor: const Color(0xFDF9FDFF),
                    ),
                    child: Icon(
                        Icons.edit_rounded,
                        color: colorGreen,
                        size: 30,
                    ),
                ),

                Positioned(
                  top: 2.5,
                  right: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorBlue,
                    ),
                    child: const SizedBox(
                      height: 10,
                      width: 10,
                    )
                  ),
                ),
              ],
            )
        )
      ],
    );
  }
}
