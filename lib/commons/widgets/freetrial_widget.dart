import 'dart:io';

import 'package:flutter/material.dart';

class PricingFreetrialWidget extends StatelessWidget {
  //key
  const PricingFreetrialWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 582,
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start your 14 days free trial',
              style: TextStyle(
                fontSize: 40,
                height: 50 / 40,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(37, 43, 66, 1),
              ),
            ),
            const SizedBox(height: 8),
            const SizedBox(
              width: 411,
              height: 40,
              child: Text(
                'Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent.',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  height: 20 / 14,
                  letterSpacing: 0.2,
                  color: Color.fromRGBO(115, 115, 115, 1),
                ),
              ),
            ),
            const SizedBox(height: 24),
            InkWell(
              onTap: () {},
              child: Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(35, 166, 240, 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15, horizontal: 40), // Added padding
                  child: Center(
                    child: Text(
                      'Start free trial',
                      style: TextStyle(
                        fontSize: 14,
                        height: 22 / 14,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => exit(0),
                  icon: Image.asset('assets/icons/ic_twitter.png'),
                ),
                IconButton(
                  onPressed: () => exit(0),
                  icon: Image.asset('assets/icons/ic_facebook.png'),
                ),
                IconButton(
                  onPressed: () => exit(0),
                  icon: Image.asset('assets/icons/ic_instagram.png'),
                ),
                IconButton(
                  onPressed: () => exit(0),
                  icon: Image.asset('assets/icons/ic_linkIn.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
