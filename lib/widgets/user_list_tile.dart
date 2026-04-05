import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/user_list_tile_model.dart';
import 'package:test1/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.userListTileModel});

  final UserListTileModel userListTileModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 20, vertical: 8),
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(userListTileModel.avatarImage),
          title: FittedBox(
            fit: .scaleDown,
            alignment: .centerLeft,
            child: Text(
              userListTileModel.name,
              style: AppStyles.styleSemiBold16,
            ),
          ),
          subtitle: Text(
            userListTileModel.email,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
