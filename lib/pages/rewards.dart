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
            const Padding(padding: EdgeInsets.only(top: 110)),
            const Center(
              child: Text(
                'Your Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Center(
              child: Text(
                '1559 POINTS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 53,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Sans Serif',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
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
                        Tab(
                          child: Text(
                            'Voucher Wallet',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Redeem Vouchers',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                      indicatorColor: Colors.white,
                    ),
                  ),
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 1.0),
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
