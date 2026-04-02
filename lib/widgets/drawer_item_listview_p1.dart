import 'package:flutter/material.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item.dart';

class DrawerItemListviewP1 extends StatefulWidget {
  const DrawerItemListviewP1({super.key});

  @override
  State<DrawerItemListviewP1> createState() => _DrawerItemListviewP1State();
}

class _DrawerItemListviewP1State extends State<DrawerItemListviewP1> {
  final List<DrawerItemModel> modelList = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(
      image: Assets.imagesMyTransactions,
      title: 'My Transactions',
    ),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
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
            isLogout: false,
          ),
        );
      },
    );
  }
}
