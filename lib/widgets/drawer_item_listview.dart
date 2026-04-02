import 'package:flutter/material.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item.dart';

class DrawerItemListview extends StatefulWidget {
  const DrawerItemListview({super.key});

  @override
  State<DrawerItemListview> createState() => _DrawerItemListviewState();
}

class _DrawerItemListviewState extends State<DrawerItemListview> {
  final List<DrawerItemModel> modelList = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
      image: Assets.imagesMyTransactions,
      title: 'My Transactions',
    ),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
    DrawerItemModel(image: Assets.imagesSettings, title: 'Settings'),
    DrawerItemModel(image: Assets.imagesLogout, title: 'Logout account'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: modelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                // print(activeIndex);
              });
            }
          },
          child: DrawerItem(
            drawerItemModel: modelList[index],
            selected: activeIndex == index,
          ),
        );
      },
    );
  }
}
