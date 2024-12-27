import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/core/themes/styles.dart';

class TransactionInfoWidget extends StatelessWidget {
  const TransactionInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/svgs/netflix.svg'),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Netflix',
                        style: Styles.textstyleBlack16,
                      ),
                      Text(
                        'Monthly subscription',
                        style: Styles.textstyle13,
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    '\$12',
                    style: Styles.textstyleBlack16,
                  ),
                ),  
              ],
            ),
          );
  }
}