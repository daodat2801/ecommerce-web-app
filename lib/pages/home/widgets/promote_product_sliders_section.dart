import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter/material.dart';

class PromoteProductSlidersSection extends StatefulWidget {
  const PromoteProductSlidersSection({super.key});

  @override
  State<PromoteProductSlidersSection> createState() =>
      _PromoteProductSlidersSectionState();
}

class _PromoteProductSlidersSectionState
    extends State<PromoteProductSlidersSection> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _products = [
    {
      'title': 'Vita Classic \nProduct',
      'subtitle': 'SUMMER 2020',
      'description':
          'We know how large objects will act, We know \nhow are objects will act, We know.',
      'price': 16.48,
    },
    {
      'title': 'Vita Classic \nProduct 2',
      'subtitle': 'WINTER 2020',
      'description': 'We know how objects will react in different conditions.',
      'price': 20.99,
    },
  ];

  final CarouselSliderController _carouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          items: _products.map((product) {
            return Container(
              color: AppColors.primaryBlue,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 209, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product['subtitle'],
                      style: const TextStyle(
                        color: AppColors.textWhiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product['title'],
                      style: const TextStyle(
                        color: AppColors.textWhiteColor,
                        fontSize: 58,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      product['description'],
                      style: const TextStyle(
                        color: AppColors.textWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Text(
                          '\$${product['price']}',
                          style: const TextStyle(
                            color: AppColors.textWhiteColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.productColorGreen,
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal: 45,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            "ADD TO CART",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textWhiteColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 709,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            initialPage: _currentIndex,
          ),
          carouselController: _carouselController,
        ),
        Positioned(
          left: 20,
          child: GestureDetector(
            onTap: () {
              if (_currentIndex > 0) {
                setState(() {
                  _currentIndex--;
                });
                _carouselController.animateToPage(_currentIndex);
              }
            },
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.textWhiteColor,
                size: 40,
                weight: 24,
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          child: GestureDetector(
            onTap: () {
              if (_currentIndex < _products.length - 1) {
                setState(() {
                  _currentIndex++;
                });
                _carouselController.animateToPage(_currentIndex);
              }
            },
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textWhiteColor,
                size: 40,
                weight: 24,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _products.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() {
                  _currentIndex = entry.key;
                  _carouselController.animateToPage(_currentIndex);
                }),
                child: Container(
                  width: 40,
                  height: 5,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: _currentIndex == entry.key
                        ? AppColors.textWhiteColor
                        : AppColors.gestureDetectorColor,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
