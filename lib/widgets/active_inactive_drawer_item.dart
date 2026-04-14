import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.selected,
    required this.isLogout,
  });
  final bool selected, isLogout;
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: selected,
      selectedTileColor: Colors.grey.shade100,
      leading: SvgPicture.asset(drawerItemModel.image, height: 24, width: 24),
      trailing: Container(
        color: selected
            ? isLogout
                  ? const Color(0xFFF3735E)
                  : const Color(0xff4EB7F2)
            : Colors.transparent,
        width: 3.5,
      ),
      contentPadding: const .only(left: 16),
      title: Text(
        drawerItemModel.title,
        style: isLogout
            ? AppStyles.styleBold16(
                context,
              ).copyWith(color: const Color(0xffF3735E))
            : AppStyles.styleBold16(context),
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image, height: 24, width: 24),
      contentPadding: const .only(left: 16),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
    );
  }
}
