import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/utils/app_assets.dart';
import 'package:test1/utils/app_styles.dart';
import 'package:test1/widgets/custom_background_contanier.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBackgroundContainer(
          padding: 24,
          child: Column(
            children: [
              Text('My card', style: AppStyles.styleSemiBold20),
              AspectRatio(
                aspectRatio: 420 / 215,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4EB7F2),
                    borderRadius: .circular(12),
                  ),
                  child: SvgPicture.asset(Assets.imagesMaskGroup),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
