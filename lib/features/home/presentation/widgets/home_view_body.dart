import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:wallet_app/core/themes/styles.dart';
import 'package:wallet_app/features/home/presentation/widgets/action_button.dart';
import 'package:wallet_app/features/home/presentation/widgets/card_item.dart';
import 'package:wallet_app/features/home/presentation/widgets/transaction_info_widget.dart';

import '../../../../core/widgets/floating_nav_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 50.0, right: 50, top: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wallet',
                          style: Styles.textstyle26,
                        ),
                        Text(
                          'Active',
                          style: Styles.textstyle13,
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      child: SvgPicture.asset('assets/svgs/netflix.svg'),
                    )
                  ],
                ),
              ),
              const CardItem(),
              const SizedBox(
                height: 41,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ActionButton(
                      icon: SvgPicture.asset('assets/svgs/convert.svg'),
                      label: 'Transfer',
                      onPressed: () {}),
                  ActionButton(
                      icon: SvgPicture.asset('assets/svgs/payment.svg'),
                      label: 'Pay',
                      onPressed: () {}),
                  ActionButton(
                      icon: SvgPicture.asset('assets/svgs/money-send.svg'),
                      label: 'Withdraw',
                      onPressed: () {}),
                  ActionButton(
                      icon: SvgPicture.asset('assets/svgs/add-circle.svg'),
                      label: 'Deposit',
                      onPressed: () {})
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                    bottom: MediaQuery.of(context).size.height / 60,
                    left: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Transaction',
                    style: Styles.textstyle18rubik,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const TransactionInfoWidget();
                    }),
              ),
            ],
          ),
          const FloatingNavBar()
        ],
      ),
    );
  }
}
