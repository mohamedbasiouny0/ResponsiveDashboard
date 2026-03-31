import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.icon, required this.title});
  final String icon, title;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 232 / 48,
      child: Row(
        children: [
          Gap(28),
          SvgPicture.asset(icon, height: 24, width: 24),
          Gap(16),
          Text(title, style: AppStyles.styleRegular16),
        ],
      ),
    );
  }
}
