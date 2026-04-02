import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.selected,
  });
  final DrawerItemModel drawerItemModel;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(bottom: 20, left: 12, right: 12),
      child: ListTile(
        selected: selected,
        leading: SvgPicture.asset(drawerItemModel.image, height: 24, width: 24),
        title: Text(
          drawerItemModel.title,
          style: selected ? AppStyles.styleBold16 : AppStyles.styleRegular16,
        ),
      ),
    );
  }
}
