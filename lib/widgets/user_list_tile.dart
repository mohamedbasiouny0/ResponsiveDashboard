import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/user_list_tile_model.dart';
import 'package:test1/utils/app_styles.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({super.key, required this.userListTileModel});

  final UserListTileModel userListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userListTileModel.avatarImage,
            height: 48,
            width: 48,
          ),
          title: Text(userListTileModel.name, style: AppStyles.styleSemiBold16),
          subtitle: Text(
            userListTileModel.email,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}

// class LatestTransactionItem extends StatelessWidget {
//   const LatestTransactionItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: .all(12),
//       decoration: BoxDecoration(
//         borderRadius: .circular(8),
//         color: Colors.amber.shade100,
//       ),
//       child: Row(
//         children: [
//           SvgPicture.asset(Assets.imagesAvatar1),
//           Gap(12),
//           Column(
//             mainAxisAlignment: .center,
//             crossAxisAlignment: .start,
//             children: [
//               Text('Madrani Andi', style: AppStyles.styleSemiBold16),
//               Text('Madraniadi20@gmail', style: AppStyles.styleRegular12),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
