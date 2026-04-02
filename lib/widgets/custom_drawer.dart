import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item_listview_p1.dart';
import 'package:test1/widgets/drawer_item_listview_p2.dart';
import 'package:test1/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).height);
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: .circular(0)),
      child: ListView(
        children: [
          UserListTile(
            image: Assets.imagesAvatar3,
            title: 'Mohamed Basiouny',
            subTitle: 'demo@gmail.com',
          ),
          Gap(20),
          DrawerItemListviewP1(),
          Gap(getDrawerGap(context: context)),
          DrawerItemListviewP2(),
          Gap(48),
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
