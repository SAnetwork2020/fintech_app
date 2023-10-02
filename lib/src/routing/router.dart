import 'package:fintech_app/src/features/authentication/presentation/login_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/terms&condition.dart';
import 'package:fintech_app/src/features/authentication/presentation/verify_your_email_screen.dart';
import 'package:fintech_app/src/features/onboarding/onboarding_screen.dart';
import 'package:fintech_app/src/features/onboarding/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../features/authentication/presentation/email_has_been_sent.dart';
import '../features/authentication/presentation/forgot_password.dart';
import '../features/authentication/presentation/new_device_login.dart';
import '../features/authentication/presentation/otp_screen.dart';
import '../features/authentication/presentation/privacy_policy.dart';
import '../features/authentication/presentation/reset_your_password.dart';
import '../features/authentication/presentation/sms_has_been_sent.dart';
import '../features/onboarding/existing_account_screen.dart';
part 'router.g.dart';

@TypedGoRoute<SplashRoute>(
  path: "/",
  name: "splash_screen",
)
class SplashRoute extends GoRouteData {
  const SplashRoute();
  static const path = "/";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SplashScreen();
}

@TypedGoRoute<OnboardingRoute>(
  path: "/onboarding_screen",
  name: "onboarding",
)
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();
  static const path = "/onboarding_screen";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingScreen();
}

@TypedGoRoute<ExistingAccountRoute>(
    path: "/existing_account_screen",
    name: "existing_account",
    routes: [
      TypedGoRoute<LoginRoute>(path: "login", name: "login"),
      TypedGoRoute<NewDeviceLoginRoute>(
          path: "new_device_login", name: "new_device_login"),
      TypedGoRoute<SignUpRoute>(path: "sign_up", name: "sign_up", routes: [
        TypedGoRoute<TermsAndConditionsRoute>(
            path: "terms_and_conditions", name: "terms_and_conditions"),
        TypedGoRoute<PrivacyPolicyRoute>(
            path: "privacy_policy", name: "privacy_policy"),
      ]),
      TypedGoRoute<ForgotPasswordRoute>(
          path: "forgot_password", name: "forgot_password"),
      TypedGoRoute<EmailHasBeenSentRoute>(
          path: "email_has_been_sent", name: "email_has_been_sent"),
      TypedGoRoute<VerifyYourEmailRoute>(
          path: "verify_email", name: "verify_email"),
      TypedGoRoute<ResetYourPasswordRoute>(
          path: "reset_your_password", name: "reset_your_password"),
      TypedGoRoute<SmsHasBeenSentRoute>(
          path: "sms_has_been_sent", name: "sms_has_been_sent"),
      TypedGoRoute<OtpRouteRoute>(
          path: "one_time_password", name: "one_time_password"),
    ])
class ExistingAccountRoute extends GoRouteData {
  const ExistingAccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ExistingAccountScreen();
}

class LoginRoute extends GoRouteData {
  const LoginRoute();
  // static const path = "/login";

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

class NewDeviceLoginRoute extends GoRouteData {
  const NewDeviceLoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const NewDeviceLoginScreen();
}

class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SignUpScreen();
}

class TermsAndConditionsRoute extends GoRouteData {
  const TermsAndConditionsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TermsAndConditionsScreen();
}

class PrivacyPolicyRoute extends GoRouteData {
  const PrivacyPolicyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PrivacyPolicyScreen();
}

class ForgotPasswordRoute extends GoRouteData {
  const ForgotPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordScreen();
}

class SmsHasBeenSentRoute extends GoRouteData {
  const SmsHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SmsHasBeenSentScreen();
}

class EmailHasBeenSentRoute extends GoRouteData {
  const EmailHasBeenSentRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EmailHasBeenSentScreen();
}

class VerifyYourEmailRoute extends GoRouteData {
  const VerifyYourEmailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const VerifyYourEmailScreen();
}

class ResetYourPasswordRoute extends GoRouteData {
  const ResetYourPasswordRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ResetYourPasswordScreen();
}

class OtpRouteRoute extends GoRouteData {
  const OtpRouteRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const OtpScreen();
}
