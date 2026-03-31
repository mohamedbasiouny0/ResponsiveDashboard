import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.image, required this.title, required this.subTitle});

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title, style: AppStyles.styleSemiBold16),
      subtitle: Text(subTitle, style: AppStyles.styleRegular12),
    );
  }
}
