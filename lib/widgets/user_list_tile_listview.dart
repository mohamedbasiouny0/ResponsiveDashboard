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
      email: 'Madraniadi20@gmail',
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
    return SizedBox(
      height: 72,
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: UserListTile(userListTileModel: usersList[index]),
          );
        },
      ),
    );
  }
}
