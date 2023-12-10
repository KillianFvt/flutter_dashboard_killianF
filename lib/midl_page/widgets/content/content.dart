import 'package:dashboard_fauvette_killian/midl_page/widgets/content/content_top.dart';
import 'package:flutter/material.dart';

import 'content_bottom.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFF4F4F4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ContentTop(),
            ContentBottom(),
          ],
        )
    );
  }
}
