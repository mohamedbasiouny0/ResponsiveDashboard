import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_assets.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.model,
    required this.selected,
  });

  final AllExpensesModel model;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: .circle,
            color: selected
                ? Colors.white.withAlpha(26)
                : Colors.black.withAlpha(6),
          ),
          child: SvgPicture.asset(
            model.headerIconImage,
            colorFilter: .mode(
              selected ? Colors.white : const Color(0xff4EB7F2),
              .srcIn,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          enableFeedback: false,
          constraints: const BoxConstraints(minHeight: 30, minWidth: 30),
          style: IconButton.styleFrom(overlayColor: Colors.transparent),
          icon: SvgPicture.asset(
            Assets.imagesArrowRight,
            colorFilter: .mode(
              selected ? Colors.white : const Color(0xff064061),
              .srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
