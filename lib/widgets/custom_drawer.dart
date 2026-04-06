import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/models/user_list_tile_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item_listview_p1.dart';
import 'package:test1/widgets/drawer_item_listview_p2.dart';
import 'package:test1/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const UserListTileModel userListTileModel = UserListTileModel(
    avatarImage: Assets.imagesAvatar3,
    name: 'Mohamed Basiouny',
    email: 'demo@gmail.com',
  );

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).height);
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: .circular(0)),
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: UserListTile(userListTileModel: userListTileModel),
          ),
          const Gap(20),
          const DrawerItemListviewP1(),
          Gap(getDrawerGap(context: context)),
          const DrawerItemListviewP2(),
          const Gap(48),
        ],
      ),
    );
  }
}

double getDrawerGap({required BuildContext context}) {
  final height = MediaQuery.sizeOf(context).height;
  if (height < 633) {
    return 0;
  } else {
    return height - 633;
  }
}
