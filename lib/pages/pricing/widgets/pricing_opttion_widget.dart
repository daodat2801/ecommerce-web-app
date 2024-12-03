import 'package:flutter/material.dart';

class PricingOpttionWidget extends StatelessWidget {
  //key
  const PricingOpttionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const Text(
          'Pricing',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Problems trying to resolve the conflict between\n'
          'the two major realms of Classical physics: Newtonian mechanics',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(115, 115, 115, 1),
          ),
        ),
        const SizedBox(height: 24),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Monthly',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 24 / 16,
                      letterSpacing: 0.1,
                      color: Color.fromRGBO(37, 43, 66, 1),
                    ),
                  ),
                  SizedBox(width: 8),
                  PricingSwitch(),
                  SizedBox(width: 8),
                  Text(
                    'Yearly',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 24 / 16,
                      letterSpacing: 0.1,
                      color: Color.fromRGBO(37, 43, 66, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Container(
                height: 44,
                width: 109,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(37),
                  border:
                      Border.all(color: const Color.fromRGBO(178, 227, 255, 1)),
                ),
                child: const Text(
                  'Save 25%',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(35, 166, 240, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class PricingSwitch extends StatefulWidget {
  const PricingSwitch({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _PricingSwitchState createState() => _PricingSwitchState();
}

class _PricingSwitchState extends State<PricingSwitch> {
  bool isYearly = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isYearly = !isYearly;
        });
      },
      child: Container(
        width: 45,
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(35, 166, 240, 1),
          ),
          color: isYearly ? Colors.blue : Colors.white,
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: isYearly ? 19 : 4,
              top: 3,
              child: Container(
                width: 19,
                height: 19,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(235, 235, 235, 1),
                  border: Border.fromBorderSide(
                    BorderSide(
                      color: Color.fromRGBO(208, 208, 208, 1),
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
