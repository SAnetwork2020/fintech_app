// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $splashRoute,
      $onboardingRoute,
      $existingAccountRoute,
    ];

RouteBase get $splashRoute => GoRouteData.$route(
      path: '/',
      name: 'splash_screen',
      factory: $SplashRouteExtension._fromState,
    );

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => const SplashRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding_screen',
      name: 'onboarding',
      factory: $OnboardingRouteExtension._fromState,
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $existingAccountRoute => GoRouteData.$route(
      path: '/existing_account_screen',
      name: 'existing_account',
      factory: $ExistingAccountRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',
          name: 'login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'new_device_login',
          name: 'new_device_login',
          factory: $NewDeviceLoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign_up',
          name: 'sign_up',
          factory: $SignUpRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'terms_and_conditions',
              name: 'terms_and_conditions',
              factory: $TermsAndConditionsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'privacy_policy',
              name: 'privacy_policy',
              factory: $PrivacyPolicyRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'forgot_password',
          name: 'forgot_password',
          factory: $ForgotPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'email_has_been_sent',
          name: 'email_has_been_sent',
          factory: $EmailHasBeenSentRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'verify_email',
          name: 'verify_email',
          factory: $VerifyYourEmailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'reset_your_password',
          name: 'reset_your_password',
          factory: $ResetYourPasswordRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sms_has_been_sent',
          name: 'sms_has_been_sent',
          factory: $SmsHasBeenSentRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'one_time_password',
          name: 'one_time_password',
          factory: $OtpRouteRouteExtension._fromState,
        ),
      ],
    );

extension $ExistingAccountRouteExtension on ExistingAccountRoute {
  static ExistingAccountRoute _fromState(GoRouterState state) =>
      const ExistingAccountRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewDeviceLoginRouteExtension on NewDeviceLoginRoute {
  static NewDeviceLoginRoute _fromState(GoRouterState state) =>
      const NewDeviceLoginRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/new_device_login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => const SignUpRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsAndConditionsRouteExtension on TermsAndConditionsRoute {
  static TermsAndConditionsRoute _fromState(GoRouterState state) =>
      const TermsAndConditionsRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up/terms_and_conditions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PrivacyPolicyRouteExtension on PrivacyPolicyRoute {
  static PrivacyPolicyRoute _fromState(GoRouterState state) =>
      const PrivacyPolicyRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sign_up/privacy_policy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForgotPasswordRouteExtension on ForgotPasswordRoute {
  static ForgotPasswordRoute _fromState(GoRouterState state) =>
      const ForgotPasswordRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/forgot_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EmailHasBeenSentRouteExtension on EmailHasBeenSentRoute {
  static EmailHasBeenSentRoute _fromState(GoRouterState state) =>
      const EmailHasBeenSentRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/email_has_been_sent',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VerifyYourEmailRouteExtension on VerifyYourEmailRoute {
  static VerifyYourEmailRoute _fromState(GoRouterState state) =>
      const VerifyYourEmailRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/verify_email',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResetYourPasswordRouteExtension on ResetYourPasswordRoute {
  static ResetYourPasswordRoute _fromState(GoRouterState state) =>
      const ResetYourPasswordRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/reset_your_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SmsHasBeenSentRouteExtension on SmsHasBeenSentRoute {
  static SmsHasBeenSentRoute _fromState(GoRouterState state) =>
      const SmsHasBeenSentRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/sms_has_been_sent',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OtpRouteRouteExtension on OtpRouteRoute {
  static OtpRouteRoute _fromState(GoRouterState state) => const OtpRouteRoute();

  String get location => GoRouteData.$location(
        '/existing_account_screen/one_time_password',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
