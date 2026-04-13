import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/mid_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.widthOf(context));
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: MidSection()),
      ],
    );
  }
}
