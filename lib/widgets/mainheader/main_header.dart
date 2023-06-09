import 'package:flutter/material.dart';
import 'package:movie_catalogue/widgets/mainheader/profile_section.dart';
import 'package:movie_catalogue/widgets/mainheader/search_bar.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SearchBar(),
        ProfileSection()
      ],
    );
  }
}