import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/drawer_item_model.dart';
import 'package:test1/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.selected,
    required this.isLogout,
  });
  final DrawerItemModel drawerItemModel;
  final bool selected, isLogout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(bottom: 20, left: 12, right: 28),
      child: ListTile(
        selected: selected,
        selectedTileColor: Colors.grey.shade100,
        leading: SvgPicture.asset(drawerItemModel.image, height: 24, width: 24),
        trailing: Container(
          color: selected
              ? isLogout
                    ? Color(0xFFF3735E)
                    : Color(0xff4EB7F2)
              : Colors.transparent,
          width: 3.5,
          height: 48,
        ),
        contentPadding: .only(left: 16),
        title: Text(
          drawerItemModel.title,
          style: selected
              ? isLogout
                    ? TextStyle(
                        color: const Color(0xFFF3735E),
                        fontSize: 16,
                        fontWeight: .bold,
                      )
                    : AppStyles.styleBold16
              : AppStyles.styleRegular16,
        ),
      ),
    );
  }
}
