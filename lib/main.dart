import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'package:fintech_app/gen/fonts.gen.dart';
import 'package:fintech_app/src/routing/router.dart';
import 'package:fintech_app/src/routing/router_listenable.dart';
import 'package:fintech_app/src/utils/state_logger.dart';

import 'src/utils/colors.dart';

void main() {
  runApp(
    const ProviderScope(
      observers: [
        StateLogger(),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final goRouter = ref.watch(goRouterProvider);
    final notifier = ref.watch(routerListenableProvider.notifier);
    final key = useRef(GlobalKey<NavigatorState>(debugLabel: "routerKey"));
    final router = useMemoized(
      () => GoRouter(
        navigatorKey: key.value,
        refreshListenable: notifier,
        initialLocation: const SplashRoute().location,
        debugLogDiagnostics: true,
        routes: $appRoutes,
        redirect: notifier.redirect,
      ),
      [notifier],
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        fontFamily: FontFamily.poppins,
        scaffoldBackgroundColor: AppColors.cD9D9D9,
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: "4K"),
        ],
      ),
      routerConfig: router,
      // routerConfig: goRouter,
      title: "FintechApp",
    );
  }
}
