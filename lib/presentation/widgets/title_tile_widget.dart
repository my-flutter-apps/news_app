import 'package:flutter/material.dart';

import '../../resources/theme/text_styles.dart' as styles;

class TitleTileWidget extends StatelessWidget {
  const TitleTileWidget({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subTitle.toUpperCase(),
          style: styles.semiBold12TextStyle,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: styles.semiBold32TextStyle,
        ),
      ],
    );
  }
}
