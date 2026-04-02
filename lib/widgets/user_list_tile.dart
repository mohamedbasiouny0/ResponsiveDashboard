import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 8),
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: FittedBox(
            fit: .scaleDown,
            alignment: .centerLeft,
            child: Text(title, style: AppStyles.styleSemiBold16),
          ),
          subtitle: Text(subTitle, style: AppStyles.styleRegular12),
        ),
      ),
    );
  }
}
