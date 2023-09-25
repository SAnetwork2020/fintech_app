import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/custom_gradient_button.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c050017,
      body: Column(
        children: [
          const SizedBox(height: 41),
          Text(
            "Privacy Policy",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: AppColors.cFFFFFF,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26, right: 27),
                    child: Text(
                      """We may collect personal information, such as your name, contact details, and financial information, to provide you with our services. This information is used for account creation, transaction processing, and communication purposes.
                    \nWe automatically collect usage data, such as app interactions, transaction history, and device information. This data helps us improve our services, troubleshoot issues, and enhance user experience.
                    \nWith your consent, we may collect and process location data to provide location-specific services, prevent fraud, and enhance security.
                    \nOur app may use cookies and similar tracking technologies to collect data about your browsing behavior. This information is used to improve app functionality, analyze trends, and personalize your experience.
                    \nWe may integrate with third-party services for various purposes, such as payment processing or analytics. Your data may be shared with these providers in accordance with their privacy policies.
                    \nWe do not sell your personal information to third parties. However, we may share data with service providers, regulatory authorities, or as required by law. We take measures to ensure the security of shared data.
                    \nYour personal information is retained for as long as necessary to provide our services and comply with legal obligations. You can request the deletion of your account and associated data, subject to applicable laws.
                    \nWe implement security measures to protect your data from unauthorized access, alteration, or disclosure. However, no online system is completely secure, and we cannot guarantee absolute security.
                    \nYou have the right to access, correct, update, or delete your personal information. You can manage your communication preferences and data sharing choices within the app settings.
                    \nOur services are not intended for individuals under the age of [minimum age]. We do not knowingly collect personal information from children without parental consent.""",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: AppColors.cFFFFFF,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomGradientButton(
                    title: "Accept and Continue",
                    onPressed: () {
                      // context.go(const PrivacyPolicyRoute().location);
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
