import 'package:fintech_app/src/features/payments/presentation/payments.dart';
import 'package:fintech_app/src/features/settings/presentations/settings.dart';
import 'package:fintech_app/src/features/support/presentations/support.dart';
import 'package:fintech_app/src/features/transfer/presentations/transfer.dart';
import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/custom_app_bar.dart';
import '../../../common_widgets/navigation_bar.dart';
import 'home.dart';
import '../widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  List<String> titles = [
    "Home",
    "Payments",
    "Transfer",
    "FAQ’S",
    "Settings",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        // backgroundColor: AppColors.cD9D9D9,
        drawer: navigationDrawer(context),
        body: IndexedStack(
          clipBehavior: Clip.none,
          // sizing: StackFit.expand,
          index: currentIndex,
          children: const [
            Home(),
            PaymentScreen(),
            TransferScreen(),
            SupportScreen(),
            SettingsScreen(),
          ],
        ),
        bottomNavigationBar: navigationBar((value) {
          setState(() {
            currentIndex = value;
          });
        }, currentIndex),
      ),
    );
  }
}
