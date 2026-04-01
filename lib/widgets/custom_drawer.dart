import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item.dart';
import 'package:test1/widgets/user_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).height);
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: .circular(0)),
      child: ListView(
        children: [
          Gap(50),
          UserListTile(
            image: Assets.imagesAvatar3,
            title: 'Mohamed Basiouny',
            subTitle: 'demo@gmail.com',
          ),
          Gap(50),
          DrawerItem(icon: Assets.imagesDashboard, title: 'Dashboard'),
          DrawerItem(
            icon: Assets.imagesMyTransactions,
            title: 'My Transactions',
          ),
          DrawerItem(icon: Assets.imagesStatistics, title: 'Statistics'),
          DrawerItem(icon: Assets.imagesWalletAccount, title: 'Wallet Account'),
          DrawerItem(icon: Assets.imagesMyInvestments, title: 'My Investments'),
          Gap(getDrawerGap(context: context)),
          DrawerItem(icon: Assets.imagesSettings, title: 'Settings'),
          DrawerItem(icon: Assets.imagesLogout, title: 'Logout account'),
          Gap(50),
        ],
      ),
    );
  }
}

double getDrawerGap({required BuildContext context}) {
  final height = MediaQuery.sizeOf(context).height;
  if (height < 655) {
    return 0;
  } else {
    return height - 655;
  }
}
