import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class DisplayListProductImage extends StatefulWidget {
  final List<String> imageUrls;
  final int selectedIndex;
  final ValueChanged<int> onItemClick;

  const DisplayListProductImage({
    super.key,
    required this.imageUrls,
    this.selectedIndex = 0,
    required this.onItemClick,
  });

  @override
  State<DisplayListProductImage> createState() =>
      _DisplayListProductImageState();
}

class _DisplayListProductImageState extends State<DisplayListProductImage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToIndex(widget.selectedIndex);
    });
  }

  @override
  void didUpdateWidget(covariant DisplayListProductImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _scrollToIndex(widget.selectedIndex);
    }
  }

  void _scrollToIndex(int index) {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        index * 110.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: widget.imageUrls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: index == widget.selectedIndex
                    ? AppColors.primaryBlue
                    : Colors.transparent,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(0),
            ),
            child: InkWell(
              onTap: () {
                widget.onItemClick(index);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: 100,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
