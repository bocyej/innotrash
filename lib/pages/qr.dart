import 'package:flutter/material.dart';

import '../pages/homepage.dart';

class QRPage extends StatelessWidget {
  const QRPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_qr.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 115)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(left: 115)),
                const Text(
                  'SCAN TO REGISTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Sans Serif',
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 50)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(18),
                    primary: const Color(0xFF2F7CFF),
                  ),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            const Center(
              child: Icon(
                Icons.fullscreen_outlined,
                size: 315,
                color: Colors.white,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            const Text(
              'Place the code inside the frame',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: Align(
          alignment: const Alignment(0.0, -1.9),
          child: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Scan QR',
            backgroundColor: const Color(0xFF2F7CFF),
            child: Icon(
              Icons.fullscreen_outlined,
              size: 40,
              color: Colors.grey.shade200,
            ),
            // Icons.qr_code_scanner_outlined or Icons.crop_free_sharp
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
