import 'package:fintech_app/src/features/home/presentation/home_screen.dart';
import 'package:fintech_app/src/features/payments/presentation/payments.dart';
import 'package:fintech_app/src/features/settings/presentations/settings.dart';
import 'package:fintech_app/src/features/support/presentations/support.dart';
import 'package:fintech_app/src/features/transfer/presentations/transfer_other_bank_screen.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../gen/assets.gen.dart';
import '../../../common_widgets/navigation_bar.dart';
import '../../../utils/colors.dart';
import '../../transfer/presentations/transfer_screen.dart';
import '../widgets/navigation_drawer.dart';
import 'home.dart';
part 'nav_bar_test.g.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: $appRoutes,
    initialLocation: const HomeRoute().location,
  );
}

@TypedShellRoute<DashBoardRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(path: "/home"),
    TypedGoRoute<PaymentRoute>(path: "/payment"),
    TypedGoRoute<TransferRoute>(path: "/transfer"),
    TypedGoRoute<SupportRoute>(path: "/support"),
    TypedGoRoute<SettingsRoute>(path: "/settings"),
  ],
)
class DashBoardRouteData extends ShellRouteData {
  const DashBoardRouteData();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return DashBoardScreen(child: navigator);
  }
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key, required this.child});
  final Widget child;

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentIndex = 0;
  List<String> titles = [
    "Home",
    "Payment",
    "Transfer",
    """FAQs
Frequently Asked Questions""",
    "Settings",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
          // alignment: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: navigationDrawer(context),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: AppColors.cFFFFFF,
          ),
          title: Text(
            titles[currentIndex],
            textAlign: TextAlign.center,
          ),
        ),
        body: widget.child,
        bottomNavigationBar: navigationBar(
          (int index) {
            setState(() {
              currentIndex = index;
            });
            switch (index) {
              case 0:
                const HomeRoute().go(context);
                break;
              case 1:
                const PaymentRoute().go(context);
                break;
              case 2:
                const TransferRoute().go(context);
                break;
              case 3:
                const SupportRoute().go(context);
                break;
              case 4:
                const SettingsRoute().go(context);
                break;
              default:
            }
          },
          currentIndex,
        ),
      ),
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Home();
  }
}

class PaymentRoute extends GoRouteData {
  const PaymentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PaymentScreen();
  }
}

class TransferRoute extends GoRouteData {
  const TransferRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TransferScreen();
  }
}

class SupportRoute extends GoRouteData {
  const SupportRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SupportScreen();
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }
}
