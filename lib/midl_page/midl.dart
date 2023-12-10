import 'package:dashboard_fauvette_killian/midl_page/widgets/content/content.dart';
import 'package:dashboard_fauvette_killian/midl_page/widgets/header/header.dart';
import 'package:flutter/material.dart';

class Midl extends StatefulWidget {
  const Midl({super.key});

  @override
  State<Midl> createState() => _MidlState();
}

class _MidlState extends State<Midl> {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontFamily: 'ArialRounded',
      ),
      child: SafeArea(
        child: Scaffold(
          body: const SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                Content(),
              ],
            ),
          ),

          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_outlined,
                      size: 40,
                      color: Color(0xFF646464),
                    )
                ),

                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.grid_view_outlined,
                      size: 40,
                      color: Color(0xFF646464),
                    )
                ),

                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat_bubble_rounded,
                      size: 40,
                      color: Color(0xFF646464),
                    )
                ),

                InkWell(
                  onTap: () {},
                  customBorder: const CircleBorder(),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage('https://picsum.photos/200'),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
