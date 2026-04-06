import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_layout_builder.dart';
import 'package:test1/widgets/dashboard_desktop_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLayoutBuilder(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
