import 'package:flutter/material.dart';
import 'package:movie_catalogue/widgets/subheader/sort_control.dart';
import 'package:movie_catalogue/widgets/subheader/view_controls.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SortControl(),
        ViewControls(),
      ],
    );
  }
}