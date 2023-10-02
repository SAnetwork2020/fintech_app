import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routing/router.dart';
import '../../../utils/colors.dart';

List<Map<String, dynamic>> drawerIconList(BuildContext context) => [
      {
        "onTap": () {
          // const HomeRoute().push(context);
        },
        "icons": Assets.icons.home.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Home",
      },
      {
        "onTap": () {
          // const ProfileRoute().push(context);
        },
        "icons": Assets.images.gregoryStones.image(
          width: 42,
          height: 42,
        ),
        // ),
        "title": "Profile",
      },
      {
        // "onTap": () {
        //   HomeRoute().push(context);
        // },
        "icons": Assets.icons.transfer.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Transfer",
        "children": <Map<String, dynamic>>[
          {
            "onTap": () {
              // HomeRoute().push(context);
            },
            "icons": Assets.icons.logo.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Payflex Account",
          },
          {
            "onTap": () {
              // const HomeRoute().push(context);
            },
            "icons": Assets.icons.bankOutline.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Other Bamks",
          },
          {
            "onTap": () {
              // const TransactionHistoryRoute().push(context);
            },
            "icons": Assets.icons.transfer.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Transaction History",
          },
        ],
      },
      {
        "onTap": () {
          // const BankTransferRoute().push(context);
        },
        "icons": Assets.icons.addMoney.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Add Money",
      },
      {
        // "onTap": () {
        //   PayBill().push(context);
        // },
        "icons": Assets.icons.transfer.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Pay Bills",
        "children": <Map<String, dynamic>>[
          {
            "onTap": () {
              // const AirtimeRoute().push(context);
            },
            "icons": Assets.icons.airtime.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Airtime",
          },
          {
            "onTap": () {
              // const DataRoute().push(context);
            },
            "icons": Assets.icons.buyData.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Data",
          },
        ],
      },
      {
        "icons": Assets.icons.payment.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Payments",
        "children": <Map<String, dynamic>>[
          {
            "onTap": () {
              // const ElectricityRoute().push(context);
            },
            "icons": Assets.icons.bulb.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Electricity",
          },
          {
            "onTap": () {
              // const InternetRoute().push(context);
            },
            "icons": Assets.icons.internetBills.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Internet Bills",
          },
          {
            "onTap": () {
              // const TvRoute().push(context);
            },
            "icons": Assets.icons.payTv.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Pay Tv",
          },
          {
            "onTap": () {
              // const TransportRoute().push(context);
            },
            "icons": Assets.icons.transport.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Transport",
          },
          {
            "onTap": () {
              // const BettingRoute().push(context);
            },
            "icons": Assets.icons.betting.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Betting",
          },
        ],
      },
      {
        // "onTap": () {
        //   HomeRoute().push(context);
        // },
        "icons": Assets.icons.loanIcon.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Loans",
        "children": <Map<String, dynamic>>[
          {
            "onTap": () {
              // const ApplyForLoanRoute().push(context);
            },
            "icons": Assets.icons.airtime.svg(
              colorFilter: ColorFilter.mode(
                AppColors.cFFFFFF,
                BlendMode.srcIn,
              ),
            ),
            "title": "Quick Loans",
          },
        ],
      },
      {
        "onTap": () {
          // const HomeRoute().push(context);
        },
        "icons": Assets.icons.lifestyle.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Lifestyle",
      },
      {
        "onTap": () {
          const LoginRoute().go(context);
        },
        "icons": Assets.icons.signOut.svg(
          colorFilter: ColorFilter.mode(
            AppColors.cFFFFFF,
            BlendMode.srcIn,
          ),
        ),
        "title": "Sign out",
      },
    ];
