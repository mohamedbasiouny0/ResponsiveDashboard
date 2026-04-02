import 'package:flutter/material.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/widgets/active_inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.selected,
    required this.isLogout,
  });
  final DrawerItemModel drawerItemModel;
  final bool selected;
  final bool isLogout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(bottom: 20, left: 12, right: 28),
      child: selected
          ? ActiveDrawerItem(
              drawerItemModel: drawerItemModel,
              selected: selected,
              isLogout: isLogout,
            )
          : InActiveDrawerItem(drawerItemModel: drawerItemModel),
    );
  }
}
