import 'package:flutter/material.dart';
import 'package:movie_catalogue/widgets/leftpane/main_nav_item.dart';
import 'package:movie_catalogue/widgets/leftpane/sub_nav_item.dart';

class LeftPane extends StatelessWidget {
  final int selected;
  final Function mainNavAction;
  
  const LeftPane({Key? key, required this.selected, required this.mainNavAction}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 170,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white, width: 4)),
            image: DecorationImage(image: AssetImage('assets/img/logo.png'), fit: BoxFit.cover)
          ),
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            MainNavItem('New Releases', Icons.rocket_launch_outlined, false, () {}),
            MainNavItem('Most Popular', Icons.emoji_events_outlined, false, () {}),
            MainNavItem('Recommended', Icons.verified_outlined, false, () {}),
            MainNavItem('Top Chart', Icons.diamond_outlined, true, () {}),
          ],
        )),
        Expanded(child: Column(
          children: [
            SubNavItem('My Collection', 20, Icons.stop_circle_rounded, Icons.arrow_drop_down, false, () {}),
            SubNavItem('Bookmark', null, null, null, false, () {}),
            SubNavItem('History', null, null, null, false, () {}),
            SubNavItem('Subscriptions', null, null, null, false, () {}),
          ],
        ))
      ],
    );
  }
}