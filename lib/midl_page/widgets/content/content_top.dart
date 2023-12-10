import 'package:dashboard_fauvette_killian/constants.dart';
import 'package:flutter/material.dart';

class ContentTop extends StatelessWidget {
  const ContentTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FunctionalityButton(
                title: 'boost'.toUpperCase(),
                icon: Icon(
                  Icons.rocket_launch_outlined,
                  size: 30,
                  color: colorBlue,
                ),
                onPressed: () {},
                text: 'Mettez votre annonce en avant pendant 24h',
                color: const Color(0xFFB3E8D8),
            ),

            const SizedBox(width: 15),

            FunctionalityButton(
                title: 'message instantané'.toUpperCase(),
                icon: Icon(
                  Icons.send_outlined,
                  size: 30,
                  color: colorGreen,
                ),
                onPressed: () {},
                text: 'N\'attendez pas de marcher pour envoyer un message',
                color: const Color(0xFFFFFFFF),
            )
          ],
        )
    );
  }
}


class FunctionalityButton extends StatelessWidget {

  final String title;
  final Icon icon;
  final Function() onPressed;
  final String text;
  final Color color;

  const FunctionalityButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width / 3 - 10,
        maxHeight: MediaQuery.of(context).size.width / 3 - 10,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          MaterialButton(
              onPressed: onPressed,
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ArialRounded',
                    ),
                  ),

                  icon,

                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      height: 1.2,
                      fontFamily: 'ArialRounded',
                    ),
                  )
                ],
              ),
          ),
          Positioned(
            top: -5,
            right: -5,
            child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),

                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(
                    Icons.add_rounded,
                    size: 20,
                    color: Colors.black,
                  )
                )
            ),
          )
        ],
      ),
    );
  }
}
