import 'package:fintech_app/src/utils/colors.dart';
import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../common_widgets/navigation_bar.dart';
import '../widgets/navigation_drawer.dart';
import 'nav_bar_test.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key, required this.child});
//   final Widget child;

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//   int currentIndex = 0;
//   List<String> titles = [
//     "Home",
//     "Payments",
//     "Transfer",
//     "FAQ’S",
//     "Settings",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         image: DecorationImage(
//           fit: BoxFit.fill,
//           image: Assets.images.homeScreen.provider(),
//           // alignment: Alignment.topLeft,
//         ),
//       ),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: Colors.transparent,
//         // backgroundColor: AppColors.cD9D9D9,
//         drawer: navigationDrawer(context),
//         body: widget.child,
//         // IndexedStack(
//         //   clipBehavior: Clip.none,
//         //   // sizing: StackFit.expand,
//         //   index: currentIndex,
//         //   children: const [
//         //     Home(),
//         //     PaymentScreen(),
//         //     TransferScreen(),
//         //     SupportScreen(),
//         //     SettingsScreen(),
//         //   ],
//         // ),
//         bottomNavigationBar:
//         navigationBar(
//           (onTapValue) {
//             setState(() {
//               currentIndex = onTapValue;
//             });
//           },
//           currentIndex,
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.child});
  final Widget child;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<String> titles = [
    "Home",
    "Payment",
    "Transfer",
    "FAQs",
    "Settings",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Assets.images.homeScreen.provider(),
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
          title: Text.rich(
            TextSpan(
              text: titles[currentIndex],
              children: currentIndex == 3
                  ? [
                      TextSpan(
                        text: "\nFrequently Asked Questions",
                        style: TextStyle(
                          fontFamily: FontFamily.lato,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: AppColors.cFFFFFF,
                        ),
                      ),
                    ]
                  : null,
            ),
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
