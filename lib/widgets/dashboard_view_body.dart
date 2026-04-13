import 'package:flutter/material.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/custom_layout_builder.dart';
import 'package:test1/widgets/dashboard_desktop_layout.dart';
import 'package:test1/widgets/dashboard_mobile_layout.dart';
import 'package:test1/widgets/dashboard_tablet_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.widthOf(context) < 850
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              scrolledUnderElevation: 0,
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffF7F9FA),
      body: CustomLayoutBuilder(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
