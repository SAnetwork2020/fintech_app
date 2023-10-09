import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router_listenable.g.dart';

@riverpod
class RouterListenable extends _$RouterListenable implements Listenable {
  VoidCallback? _routerListener;
  // bool _isAuth = false;
  bool? _onboardingShown;
  late SharedPreferences _prefs;
  static const onboarding = "onb";
  @override
  Future<void> build() async {
    _prefs = await SharedPreferences.getInstance();
    // _onboardingShown = await
    // return;
    ref.listenSelf((previous, next) {
      if (state.isLoading) return;
      if (next.hasError) {
        _prefs.remove(onboarding);
      }
      _routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;
    final isSplash = state.matchedLocation == const SplashRoute().location;
    // final isSplash = state.location == const SplashRoute().location;
    _onboardingShown = _prefs.getBool(onboarding);
    String? redirectLocation;
    // final isSplash = state.location == SplashRoute.path;
    if (isSplash && _onboardingShown == null) {
      print("Onboarding-onboardingValue:${_prefs.getBool(onboarding)}");
      _prefs.setBool(onboarding, true);
      redirectLocation = const OnboardingRoute().location;
      return redirectLocation;
    } else if (isSplash && _onboardingShown == true) {
      print("LoginRoute-onboardingValue:${_prefs.getBool(onboarding)}");
      redirectLocation = const LoginRoute().location;
      return redirectLocation;
    } else {
      return redirectLocation;
    }
  }

  void removeOnboarding() {
    _prefs.remove(onboarding);
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
