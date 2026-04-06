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
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
      image: Assets.imagesMyTransactions,
      title: 'My Transactions',
    ),
    const DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
