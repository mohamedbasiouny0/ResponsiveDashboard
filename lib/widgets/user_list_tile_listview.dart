import 'package:flutter/material.dart';
import 'package:test1/models/user_list_tile_model.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/user_list_tile.dart';

class UserListTileListView extends StatelessWidget {
  const UserListTileListView({super.key});

  static const List<UserListTileModel> usersList = [
    UserListTileModel(
      avatarImage: Assets.imagesAvatar1,
      name: 'Makram Abed',
      email: 'Madraniadi20@gmail.com',
    ),
    UserListTileModel(
      avatarImage: Assets.imagesAvatar2,
      name: 'Mostafa Mahmoud',
      email: 'mostafamahmoud@gmail.com',
    ),
    UserListTileModel(
      avatarImage: Assets.imagesAvatar3,
      name: 'Fawzy Ramah',
      email: 'fawzyramah@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        children: usersList
            .map(
              (e) => IntrinsicWidth(child: UserListTile(userListTileModel: e)),
            )
            .toList(),
      ),
    );
  }
}
