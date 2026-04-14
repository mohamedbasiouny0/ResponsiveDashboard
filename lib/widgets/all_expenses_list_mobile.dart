import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test1/widgets/all_expenses_page_view_mobile.dart';
import 'package:test1/widgets/custom_smooth_page_indicator.dart';

class AllExpensesListMobile extends StatefulWidget {
  const AllExpensesListMobile({super.key});

  @override
  State<AllExpensesListMobile> createState() => _AllExpensesListMobileState();
}

class _AllExpensesListMobileState extends State<AllExpensesListMobile> {
  late PageController controller;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        AllExpensesPageViewMobile(controller: controller),
        const Gap(19),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: CustomSmoothPageIndicator(
            isMobile: true,
            pageController: controller,
          ),
        ),
      ],
    );
  }
}
