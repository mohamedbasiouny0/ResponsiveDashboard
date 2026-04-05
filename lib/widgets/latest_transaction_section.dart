import 'package:flutter/material.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/user_list_tile_listview.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        UserListTileListView(),
      ],
    );
  }
}
