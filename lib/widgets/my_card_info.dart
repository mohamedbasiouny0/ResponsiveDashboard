import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';

class MyCardInfo extends StatelessWidget {
  const MyCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const .only(top: 13, left: 31, right: 31),
          title: Text(
            'Mohamed Basiouny',
            style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
          ),
          subtitle: Text('Syah Bandi', style: AppStyles.styleMedium20(context)),
          trailing: const ClipRRect(
            borderRadius: .all(.circular(12)),
            child: Image(image: AssetImage(Assets.imagesTiger)),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const .only(right: 24),
          child: Align(
            alignment: .centerRight,

            child: Column(
              crossAxisAlignment: .end,
              children: [
                Text(
                  '0918 8124 0042 8129',
                  style: AppStyles.styleSemiBold24(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                const Gap(8),
                Text(
                  '12/20 - 124',
                  style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const Gap(27),
      ],
    );
  }
}
