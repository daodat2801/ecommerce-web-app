import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  //key
  const BannerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 288,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: const Column(
        children: [
          Text(
            'PRICING',
            style: TextStyle(
              color: Color.fromRGBO(115, 116, 115, 1),
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              height: 24 / 16,
            ),
          ),
          Text(
            'Simple Pricing ',
            style: TextStyle(
              color: Color.fromRGBO(37, 43, 66, 1),
              fontSize: 58,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.2,
              height: 80 / 58,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Home",
                style: TextStyle(
                  color: Color.fromRGBO(37, 43, 66, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                  height: 24 / 4,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Color.fromRGBO(189, 189, 189, 1),
                size: 16,
              ),
              Text(
                "Pricing",
                style: TextStyle(
                  color: Color.fromRGBO(115, 115, 115, 1),
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                  height: 24 / 4,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
