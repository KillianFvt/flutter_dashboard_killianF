import 'package:dashboard_fauvette_killian/midl_page/widgets/header/bottom_header.dart';
import 'package:dashboard_fauvette_killian/midl_page/widgets/header/center_avatar.dart';
import 'package:dashboard_fauvette_killian/midl_page/widgets/header/top_header.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        SizedBox(height: 12),

        TopHeader(),

        SizedBox(height: 8),

        CenterAvatar(image: NetworkImage('https://picsum.photos/200')),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Killian",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        BottomHeader(),
      ],
    );
  }
}
