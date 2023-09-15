import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router_listenable.g.dart';

@riverpod
class RouterListenable extends _$RouterListenable implements Listenable {
  VoidCallback? _routerListener;
  bool _isAuth = false;
  bool? _onboardingShown = false;
  late SharedPreferences _prefs;
  static const onboarding = "onb";
  @override
  Future<void> build() async {
    _prefs = await SharedPreferences.getInstance();
    _onboardingShown = _prefs.getBool(onboarding);
    // _onboardingShown = await
    // return;
    ref.listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }
      _routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (this.state.isLoading || this.state.hasError) return null;
    final isSplash = state.location == SplashRoute.path;
    // final isSplash = state.location == SplashRoute.path;
    if (isSplash && _onboardingShown == false) {
      _prefs.setBool(onboarding, true);
      return  OnboardingRoute.path;
    } else {
      return  LoginRoute.path;
    }
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
