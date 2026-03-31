
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: .circular(0)),
      child: Column(
        children: [
          Gap(50),
          UserListTile(
            image: Assets.imagesAvatar1,
            title: 'Mohamed Basiouny',
            subTitle: 'demo@gmail.com',
          ),
          Gap(50),
          
        ],
      ),
    );
  }
}
