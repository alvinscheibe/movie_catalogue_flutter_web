import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_catalogue/data.dart';
import 'package:movie_catalogue/widgets/leftpane/left_pane_widget.dart';
import 'package:movie_catalogue/widgets/main_pane.dart';
import 'package:movie_catalogue/widgets/mainheader/main_header.dart';
import 'package:movie_catalogue/widgets/subheader/sub_header.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State createState() {
    return _AppLayoutState();
  }
}

class _AppLayoutState extends State<AppLayout> {
  List<Map<String,dynamic>> data = topChart;
  int currentPage = 4;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/bg.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              color: const Color(0xFF253089).withOpacity(0.85),
              child: LeftPane(mainNavAction: menuAction, selected: currentPage),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 120,
                    color: Colors.indigo.withOpacity(0.80),
                    child: const MainHeader(),
                  ),
                  Container(
                    height: 120,
                    color: Colors.indigo.withOpacity(0.60),
                    child: const SubHeader(),
                  ),
                  Expanded(
                    child: Center(
                      child: MainPane(data: data),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void menuAction(int page, List<Map<String,dynamic>> data){
    setState(() {
      currentPage = page;
      this.data = data;
    });
  }
}