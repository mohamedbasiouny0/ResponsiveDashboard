import 'package:flutter/material.dart';
import 'package:test1/widgets/mid_section.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/my_card_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(flex: 3, child: MidSection()),
        Expanded(flex: 2, child: MyCardSection()),
      ],
    );
  }
}
