import 'package:flutter/material.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/widgets/my_card_info.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: .circular(12),
          image: const DecorationImage(
            image: AssetImage(Assets.imagesMaskGroup),
            fit: .fill,
          ),
        ),
        child: const MyCardInfo(),
      ),
    );
  }
}
