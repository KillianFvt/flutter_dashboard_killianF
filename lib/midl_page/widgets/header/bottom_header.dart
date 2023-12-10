import 'package:dashboard_fauvette_killian/constants.dart';
import 'package:flutter/material.dart';

class BottomHeader extends StatelessWidget {
  const BottomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BHButton(
                  color: colorBlue,
                  text: "Mon profil",
                  icon: Icons.person_outline_rounded,
              ),

              BHButton(
                  color: colorGreen,
                  text: "Mes recherches",
                  icon: Icons.local_mall_outlined,
              ),
            ],
          ),
        ),

        const Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
            child: Text(
              "Améliorer votre recrutement avec nos services",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            )
        )
      ],
    );
  }
}

class BHButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData? icon;

  const BHButton({
    super.key,
    required this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
        color: color,
        padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'ArialRounded',
              ),
            )
          ],
        )
    );
  }
}

