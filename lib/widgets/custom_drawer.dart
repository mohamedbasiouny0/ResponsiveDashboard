import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item_listview.dart';
import 'package:test1/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.sizeOf(context).height);
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: .circular(0)),
      child: Column(
        children: [
          UserListTile(
            image: Assets.imagesAvatar3,
            title: 'Mohamed Basiouny',
            subTitle: 'demo@gmail.com',
          ),
          Gap(20),
          DrawerItemListview(),
        ],
      ),
    );
  }
}

// Gap(getDrawerGap(context: context)),
double getDrawerGap({required BuildContext context}) {
  final height = MediaQuery.sizeOf(context).height;
  if (height < 585) {
    return 0;
  } else {
    return height - 585;
  }
}
