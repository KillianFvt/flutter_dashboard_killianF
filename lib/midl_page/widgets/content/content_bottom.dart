import 'package:flutter/material.dart';

class ContentBottom extends StatelessWidget {
  const ContentBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFF2B2B2B),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 10),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "PREMIUM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ArialRounded',
                      ),
                    ),
                    Icon(
                      Icons.star_outline_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                const Text(
                  'Déploquez toutes nos options pour prendre le contrôle',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'ArialRounded',
                  ),
                ),

                const SizedBox(height: 10),

                MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                    child: const Text(
                      "Bientôt disponible !",
                    ),
                ),

                const SizedBox(height: 10),
              ],
            ),
        ),
    );
  }
}
