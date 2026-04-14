import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/models/all_expenses_model.dart';
import 'package:test1/utils/app_assets.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.model, this.selected});

  final AllExpensesModel model;
  final bool? selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: .circle,
                  color: selected ?? true
                      ? Colors.white.withAlpha(26)
                      : Colors.black.withAlpha(6),
                  // color: selected ? Colors.amber : Colors.red,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    model.headerIconImage,
                    colorFilter: .mode(
                      selected ?? true ? Colors.white : const Color(0xff4EB7F2),
                      .srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SvgPicture.asset(
            Assets.imagesArrowRight,
            colorFilter: .mode(
              selected ?? true ? Colors.white : const Color(0xff064061),
              .srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
