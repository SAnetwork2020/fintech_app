// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fintech_app/src/features/settings/presentations/account_limits/account_limits_screen.dart';
import 'package:fintech_app/src/features/settings/presentations/bank_statement/bank_statement.dart';
import 'package:fintech_app/src/features/transfer/presentations/transfer_to_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:fintech_app/src/constants/constants.dart';
import 'package:fintech_app/src/constants/success_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/login_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:fintech_app/src/features/authentication/presentation/terms&condition.dart';
import 'package:fintech_app/src/features/authentication/presentation/verify_your_email_screen.dart';
import 'package:fintech_app/src/features/onboarding/onboarding_screen.dart';
import 'package:fintech_app/src/features/onboarding/splash_screen.dart';
import 'package:fintech_app/src/features/payments/presentation/buy_airtime/buy_airtime.dart';
import 'package:fintech_app/src/features/payments/presentation/cardless_withdrawal/cardless_withdrawal.dart';

import '../features/authentication/presentation/email_has_been_sent.dart';
import '../features/authentication/presentation/forgot_password.dart';
import '../features/authentication/presentation/new_device_login.dart';
import '../features/authentication/presentation/otp_screen.dart';
import '../features/authentication/presentation/privacy_policy.dart';
import '../features/authentication/presentation/reset_your_password.dart';
import '../features/authentication/presentation/sms_has_been_sent.dart';
import '../features/home/presentation/home.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/onboarding/existing_account_screen.dart';
import '../features/payments/presentation/add_money/bank_transfer.dart';
import '../features/payments/presentation/betting/betting.dart';
import '../features/payments/presentation/buy_data/buy_data.dart';
import '../features/payments/presentation/electricity/electricity.dart';
import '../features/payments/presentation/get_loans/get_loans.dart';
import '../features/payments/presentation/internet/internet.dart';
import '../features/payments/presentation/pay_tv/pay_tv.dart';
import '../features/payments/presentation/payments.dart';
import '../features/payments/presentation/transaction_history/transaction_history.dart';
import '../features/payments/presentation/transport/transport.dart';
import '../features/payments/widget/transaction_receipt.dart';
import '../features/settings/presentations/beneficiary_list/benficiary_list_screen.dart';
import '../features/settings/presentations/saved_cards/add_new_card_screen.dart';
import '../features/settings/presentations/saved_cards/empty_saved_cards_screen.dart';
import '../features/settings/presentations/saved_cards/select_add_new_cards_screen.dart';
import '../features/settings/presentations/security/security_screen.dart';
import '../features/settings/presentations/settings.dart';
import '../features/support/presentations/message_us_screen.dart';
import '../features/support/presentations/search_result_found.dart';
import '../features/support/presentations/search_result_not_found.dart';
import '../features/support/presentations/search_result_screen.dart';
import '../features/support/presentations/support.dart';
import '../features/transfer/presentations/transfer_screen.dart';

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

@TypedShellRoute<DashBoardRouteData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRoute>(path: "/home"),
    TypedGoRoute<PaymentRoute>(
      path: "/payment",
      routes: [
        TypedGoRoute<AirtimeRoute>(path: "airtime"),
        TypedGoRoute<DataRoute>(path: "data"),
        TypedGoRoute<CardlessWithdrawalRoute>(path: "cardless_withdrawal"),
        TypedGoRoute<AddMoneyRoute>(path: "add_money"),
        TypedGoRoute<TransactionHistoryRoute>(
          path: "transaction_history",
          routes: [
            TypedGoRoute<TransactionReceiptRoute>(path: "transaction_receipt")
          ],
        ),
        TypedGoRoute<ApplyForLoanRoute>(path: "apply_for_loan"),
        TypedGoRoute<ElectricityRoute>(path: "electricity"),
        TypedGoRoute<InternetRoute>(path: "internet"),
        TypedGoRoute<PaytvRoute>(path: "pay_tv"),
        TypedGoRoute<TransportRoute>(path: "transport"),
        TypedGoRoute<BettingRoute>(path: "betting"),
        // TypedGoRoute<CardlessWithdrawalRoute>(path: "cardless_withdrawal"),
        // TypedGoRoute<CardlessWithdrawalRoute>(path: "cardless_withdrawal"),
      ],
    ),
    TypedGoRoute<TransferRoute>(
      path: "/transfer",
      routes: [
        TypedGoRoute<TransferToRoute>(path: "transfer_to"),
      ],
    ),
    TypedGoRoute<SupportRoute>(
      path: "/support",
      routes: [
        TypedGoRoute<SearchResulNotFoundRoute>(path: "search_result_not_found"),
        TypedGoRoute<SearchResulFoundRoute>(path: "search_result_found"),
        TypedGoRoute<SearchResultRoute>(path: "search_result"),
        TypedGoRoute<MessageUsRoute>(path: "message_us"),
      ],
    ),
    TypedGoRoute<SettingsRoute>(
      path: "/settings",
      routes: [
        TypedGoRoute<BankStatementRoute>(path: "bank_statement"),
        TypedGoRoute<EmptySavedCardsRoute>(
          path: "saved_cards",
          routes: [
        TypedGoRoute<SelectAddNewCardsRoute>(path: "select_add_new_cards"),
          ],
        ),
        TypedGoRoute<AddNewCardRoute>(path: "add_new_cards"),
        TypedGoRoute<BeneficiaryListRoute>(path: "beneficiaries"),
        TypedGoRoute<SecurityRoute>(path: "security"),
        TypedGoRoute<NotificationRoute>(path: "notification"),
        TypedGoRoute<LanguageRoute>(path: "language"),
        TypedGoRoute<AccountLimitsRoute>(path: "account_limits"),
        TypedGoRoute<HelpRoute>(path: "help"),
      ],
    ),
  ],
)
class DashBoardRouteData extends ShellRouteData {
  const DashBoardRouteData();
  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  //  static final ObjectRef<GlobalKey<NavigatorState>> $navigatorKey =
  // shellNavigatorKey;
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return HomeScreen(child: navigator);
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

class AirtimeRoute extends GoRouteData {
  const AirtimeRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  // static final ObjectRef<GlobalKey<NavigatorState>> $parentNavigatorKey =
  // rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AirtimeScreen(
      key: state.pageKey,
    );
  }
}

class DataRoute extends GoRouteData {
  const DataRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DataScreen(
      key: state.pageKey,
    );
  }
}

class CardlessWithdrawalRoute extends GoRouteData {
  const CardlessWithdrawalRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CardlessWithdrawalScreen(
      key: state.pageKey,
    );
  }
}

class AddMoneyRoute extends GoRouteData {
  const AddMoneyRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddMoneyScreen(
      key: state.pageKey,
    );
  }
}

class TransactionHistoryRoute extends GoRouteData {
  const TransactionHistoryRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionHistoryScreen(
      key: state.pageKey,
    );
  }
}

class TransactionReceiptRoute extends GoRouteData {
  const TransactionReceiptRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransactionReceiptScreen(
      key: state.pageKey,
    );
  }
}

class ApplyForLoanRoute extends GoRouteData {
  const ApplyForLoanRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ApplyForLoanScreen(
      key: state.pageKey,
    );
  }
}

class ElectricityRoute extends GoRouteData {
  const ElectricityRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ElectricityScreen(
      key: state.pageKey,
    );
  }
}

class InternetRoute extends GoRouteData {
  const InternetRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return InternetScreen(
      key: state.pageKey,
    );
  }
}

class PaytvRoute extends GoRouteData {
  const PaytvRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PayTvScreen(
      key: state.pageKey,
    );
  }
}

class TransportRoute extends GoRouteData {
  const TransportRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransportScreen(
      key: state.pageKey,
    );
  }
}

class BettingRoute extends GoRouteData {
  const BettingRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BettingScreen(
      key: state.pageKey,
    );
  }
}

class TransferRoute extends GoRouteData {
  const TransferRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TransferScreen();
  }
}

// @TypedGoRoute<TransferToRoute>(
//   path: "/transfer_to",
//   name: "transfer_totransfer_to",
// )
class TransferToRoute extends GoRouteData {
  const TransferToRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return TransferToScreen(
      key: state.pageKey,
    );
  }
}

/// [TransferScreen] Screens ends

/// [SupportScreen] Screens Begins
class SupportRoute extends GoRouteData {
  const SupportRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SupportScreen();
  }
}

class SearchResulNotFoundRoute extends GoRouteData {
  const SearchResulNotFoundRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchResulNotFoundScreen(
      key: state.pageKey,
    );
  }
}

class SearchResulFoundRoute extends GoRouteData {
  const SearchResulFoundRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchResulFoundScreen(
      key: state.pageKey,
    );
  }
}

class SearchResultRoute extends GoRouteData {
  const SearchResultRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SearchResultScreen(
      key: state.pageKey,
    );
  }
}

class MessageUsRoute extends GoRouteData {
  const MessageUsRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MessageUsScreen(
      key: state.pageKey,
    );
  }
}

/// [SupportScreen] Screens ends

/// [SettingsScreen] Screens Begins
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsScreen();
  }
}

class BankStatementRoute extends GoRouteData {
  const BankStatementRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BankStatementScreen(
      key: state.pageKey,
    );
  }
}

class EmptySavedCardsRoute extends GoRouteData {
  const EmptySavedCardsRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EmptySavedCardsScreen(
      key: state.pageKey,
    );
  }
}

class AddNewCardRoute extends GoRouteData {
  const AddNewCardRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AddNewCardScreen(
      key: state.pageKey,
    );
  }
}

class SelectAddNewCardsRoute extends GoRouteData {
  const SelectAddNewCardsRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SelectAddNewCardsScreen(
      key: state.pageKey,
    );
  }
}

class BeneficiaryListRoute extends GoRouteData {
  const BeneficiaryListRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BeneficiaryListScreen(
      key: state.pageKey,
    );
  }
}

class SecurityRoute extends GoRouteData {
  const SecurityRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SecurityScreen(
      key: state.pageKey,
    );
  }
}

class NotificationRoute extends GoRouteData {
  const NotificationRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BankStatementScreen(
      key: state.pageKey,
    );
  }
}

class LanguageRoute extends GoRouteData {
  const LanguageRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BankStatementScreen(
      key: state.pageKey,
    );
  }
}

class AccountLimitsRoute extends GoRouteData {
  const AccountLimitsRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AccountLimitsScreen(
      key: state.pageKey,
    );
  }
}

class HelpRoute extends GoRouteData {
  const HelpRoute();
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BankStatementScreen(
      key: state.pageKey,
    );
  }
}

/// [SettingsScreen] Screens ends
///
@TypedGoRoute<SuccessRoute>(
  path: "/success",
  name: "success",
)
class SuccessRoute extends GoRouteData {
  SuccessRoute({
    this.buttonText,
    required this.msg,
    required this.address,
  });
  // const path = "/success";
  final String msg;
  final String? buttonText;
  final String address;
  @override
  Widget build(BuildContext context, GoRouterState state) => SuccessScreen(
        msg: msg,
        location: address,
        buttonText: buttonText,
      );
}
