import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layouts/rewardsappbar.dart';
import '../layouts/vouchersone.dart';
import '../layouts/voucherstwo.dart';
import '../layouts/redeemone.dart';
import '../layouts/redeemtwo.dart';
import '../layouts/redeemthree.dart';
import '../layouts/redeemfour.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // transparent appbar
      appBar: const RewardsAppbar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 82)),
            const Center(
              child: Text(
                'Your Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            const Center(
              child: Text(
                '1559 POINTS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Sans Serif',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    child: const TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white24,
                      tabs: [
                        Tab(text: 'Voucher Wallet'),
                        Tab(text: 'Redeem Vouchers'),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 22),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Padding(padding: EdgeInsets.only(left: 21)),
                                    VouchersOne(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 22),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    RedeemOne(),
                                    RedeemTwo(),
                                  ],
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(top: 20)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    RedeemThree(),
                                    RedeemFour(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
