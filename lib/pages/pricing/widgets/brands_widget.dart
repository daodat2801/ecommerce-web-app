import 'package:flutter/material.dart';

class BrandsWidget extends StatelessWidget {
  //key
  const BrandsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 365,
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Trusted By Over 4000 Big Companies',
            style: TextStyle(
              color: Color.fromRGBO(37, 43, 66, 1),
              fontSize: 20,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.2,
              height: 30 / 20,
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/brand1.png'),
              Image.asset('assets/images/brand2.png'),
              Image.asset('assets/images/brand3.png'),
              Image.asset('assets/images/brand4.png'),
              Image.asset('assets/images/brand5.png'),
              Image.asset('assets/images/brand6.png'),
            ],
          ),
        ],
      ),
    );
  }
}
