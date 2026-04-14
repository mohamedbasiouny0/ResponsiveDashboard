import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: DashboardMobileLayout(),
          ),
        ),
      ],
    );
  }
}
