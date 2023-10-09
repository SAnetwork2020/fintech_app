import 'package:fintech_app/src/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/custom_gradient_button.dart';
import '../../../utils/colors.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c050017,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 41),
          Center(
            child: Text(
              "Terms and Conditions",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: AppColors.cFFFFFF,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0, right: 27),
                    child: Text(
                      """Users are responsible for providing accurate and up-to-date information when registering for an account or using our services. Any false or misleading information provided may result in the suspension or termination of your account.
                            \nUsers are responsible for maintaining the security of their account login credentials. This includes not sharing your password with others and promptly notifying us of any unauthorized access or suspicious activity related to your account.           
                            \nUsers agree to use our app and services in accordance with all applicable laws, regulations, and guidelines. You must not engage in any illegal or fraudulent activities through our app.     
                            \nUsers agree to receive communications from us electronically, including emails, notifications, and updates. It’s your responsibility to regularly review these communications for important information.     
                            \nUsers are prohibited from engaging in activities that could harm our app, services, or other users. This includes, but is not limited to, attempting to gain unauthorized access, distributing malware, or engaging in any form of harassment.     
                            \nUsers acknowledge that the accuracy and completeness of financial and personal data entered into the app are crucial for the proper functioning of the services. Any errors or discrepancies should be promptly reported to us.
                            \nIf you choose to link your account with third-party services, you are responsible for understanding and complying with the terms and policies of those services. We are not responsible for any actions or consequences related to your interactions with third-party providers.""",
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
                      const PrivacyPolicyRoute().push(context);
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
