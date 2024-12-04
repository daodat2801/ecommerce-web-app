import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:ecommerce_web_app/pages/product_detail/widgets/display_list_product_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductImagePreview extends StatefulWidget {
  const ProductImagePreview({super.key});

  @override
  State<ProductImagePreview> createState() => _ProductImagePreviewState();
}

class _ProductImagePreviewState extends State<ProductImagePreview>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;
  late AnimationController _zoomController;
  late Animation<double> _zoomAnimation;

  Offset _hoverOffset = Offset.zero;
  final double _maxOffset = 300;

  @override
  void initState() {
    super.initState();
    _zoomController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _zoomAnimation = Tween<double>(begin: 1.0, end: 2).animate(
      CurvedAnimation(
        parent: _zoomController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _zoomController.dispose();
    super.dispose();
  }

  // Method to update currentIndex and handle state updates
  void updateCurrentIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // Method to handle hover state changes
  void updateHoverOffset(Offset offset) {
    setState(() {
      _hoverOffset = offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
      AppImage.productDetailImageChair,
      AppImage.productDetailImage,
    ];

    return Scaffold(
      backgroundColor: AppColors.grayBackgroundColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              heightFactor: 0.82,
              widthFactor: 1.0,
              child: ClipRect(
                child: MouseRegion(
                  // Trigger zoom in on hover
                  onEnter: (_) => _zoomController.forward(),
                  // Trigger zoom out and reset offset on hover exit
                  onExit: (_) {
                    _zoomController.reverse();
                    updateHoverOffset(Offset.zero);
                  },
                  onHover: (event) {
                    final RenderBox box = context.findRenderObject() as RenderBox;
                    final localPosition = box.globalToLocal(event.position);
                    final size = box.size;

                    // Calculate and update hover offset
                    updateHoverOffset(Offset(
                      -(localPosition.dx / size.width - 0.5) * _maxOffset,
                      -(localPosition.dy / size.height - 0.5) * _maxOffset,
                    ));
                  },
                  child: AnimatedBuilder(
                    animation: _zoomAnimation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _zoomAnimation.value,
                        child: Transform.translate(
                          offset: _hoverOffset * (_zoomAnimation.value - 1),
                          child: child,
                        ),
                      );
                    },
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: Image.asset(
                        imageUrls[currentIndex],
                        key: ValueKey<int>(currentIndex),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.14,
              widthFactor: 1.0,
              child: DisplayListProductImage(
                imageUrls: imageUrls,
                selectedIndex: currentIndex,
                onItemClick: (index) {
                  // Update current image index when clicked
                  updateCurrentIndex(index);
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: InkWell(
                onTap: () {
                  // Navigate to the previous image
                  updateCurrentIndex(
                      (currentIndex - 1 + imageUrls.length) % imageUrls.length);
                },
                child: SvgPicture.asset(
                  AppSvgs.arrowLeft,
                  width: 24,
                  height: 45,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: InkWell(
                onTap: () {
                  // Navigate to the next image
                  updateCurrentIndex(
                      (currentIndex + 1 + imageUrls.length) % imageUrls.length);
                },
                child: SvgPicture.asset(
                  AppSvgs.arrowRight,
                  width: 24,
                  height: 45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
