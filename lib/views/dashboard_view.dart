import 'package:flutter/material.dart';
import 'package:test1/utils/size_config.dart';
import 'package:test1/widgets/custom_drawer.dart';
import 'package:test1/widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.widthOf(context);
    return Scaffold(
      appBar: width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              scrolledUnderElevation: 0,
            )
          : null,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffF7F9FA),
      body: const DashboardViewBody(),
    );
  }
}
