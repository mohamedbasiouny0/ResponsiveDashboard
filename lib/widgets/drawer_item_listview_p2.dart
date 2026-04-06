import 'package:flutter/material.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/drawer_item.dart';

class DrawerItemListviewP2 extends StatefulWidget {
  const DrawerItemListviewP2({super.key});

  @override
  State<DrawerItemListviewP2> createState() => _DrawerItemListviewP1State();
}

class _DrawerItemListviewP1State extends State<DrawerItemListviewP2> {
  final List<DrawerItemModel> modelList = [
    const DrawerItemModel(image: Assets.imagesSettings, title: 'Settings'),
    const DrawerItemModel(image: Assets.imagesLogout, title: 'Logout account'),
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
            isLogout: activeIndex == 1,
          ),
        );
      },
    );
  }
}
